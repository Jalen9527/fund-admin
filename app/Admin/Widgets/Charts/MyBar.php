<?php


namespace App\Admin\Widgets\Charts;

use Dcat\Admin\Admin;
use Dcat\Admin\Widgets\ApexCharts\Chart;
use App\Models\UserFoudDay;

class MyBar extends Chart
{
    public function __construct($containerSelector = null, $options = [])
    {
        parent::__construct($containerSelector, $options);

        $this->setUpOptions();
    }

    /**
     * 初始化图表配置
     */
    protected function setUpOptions()
    {
        $color = Admin::color();

        $colors = [$color->primary(), $color->primaryDarker()];

        $this->options([
            'colors' => $colors, //['#008FFB','#008FFB'],//
            'chart' => [
                'type' => 'area',
                'height' => 430,
                'stacked' => false,

            ],
            'plotOptions' => [
                'bar' => [
                    'horizontal' => true,
                    'dataLabels' => [
                        'position' => 'top',
                    ],
                ]
            ],
            'dataLabels' => [
                'enabled' => false,
            ],
           "fill" => [
               "type" => 'gradient',
               "opacity" =>  0.9,
               "gradient" => [
                   'shadeIntensity' => 0,
                   'inverseColors' => false,
                   // 'opacityFrom' => 1,
                   // 'opacityTo' => 1,
                   // 'stops' => [10, 90, 100],
               ]
           ],
            'stroke' => [
                'show' => true,
                'width' => 3,
                'colors' => [$color->primary()],
                "curve" =>'straight',
            ],
            'xaxis' => [
                'categories' => [],
            ],
            // 'pattern' => [
            //     'style' => 'slantedLines',
            //     'width' => 6,
            //     'height' => 6,
            //     'strokeWidth' => 2
            // ]

        ]);
    }

    /**
     * 处理图表数据
     */
    protected function buildData()
    {
        $user_id = Admin::user()->id;
        $list = UserFoudDay::where('user_id' , $user_id)->orderBy('day', 'desc')->limit(7)->get()->toArray();

        foreach ($list as $key => $value) {
            $cardData[] = $value['fund_sum'];
            $dayData[] = $value['day'];
        }
        $cardData = array_reverse($cardData);
        $dayData = array_reverse($dayData);
        // 执行你的数据查询逻辑
        $data = [
            [
                'data' => $cardData  //图标数据y
            ]
        ];
        $categories = $dayData;      //日期x

        $this->withData($data);
        $this->withCategories($categories);
    }

    /**
     * 设置图表数据
     *
     * @param array $data
     *
     * @return $this
     */
    public function withData(array $data)
    {
        return $this->option('series', $data);
    }

    /**
     * 设置图表类别.
     *
     * @param array $data
     *
     * @return $this
     */
    public function withCategories(array $data)
    {
        return $this->option('xaxis.categories', $data);
    }

    /**
     * 渲染图表
     *
     * @return string
     */
    public function render()
    {
        $this->buildData();

        return parent::render();
    }
}
