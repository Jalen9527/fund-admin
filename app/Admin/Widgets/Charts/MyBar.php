<?php


namespace App\Admin\Widgets\Charts;

use Dcat\Admin\Admin;
use Dcat\Admin\Widgets\ApexCharts\Chart;
use App\Models\UserFoudDay;

class MyBar extends Chart
{
    public function __construct($containerSelector = null, $options = [] , $setDay=null)
    {
        parent::__construct($containerSelector, $options);

        $this->setDay = $setDay;

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
                'zoom' => [
                    'autoScaleYaxis' => true,
                ],
            ],
            'stroke' => [
                'width' => 3,
                // 'show' => true,
                // 'colors' => [$color->primary()],
                // "curve" =>'straight',   //直线
            ],
            'dataLabels' => [
                'enabled' => false,
            ],
            "fill" => [
                "opacity" => 1,
            ],
            "markers" => [
                "size" => 0
            ],
            'xaxis' => [
                'type' => 'category',//'datetime',
                'tickAmount' => 10,
                'categories' => [],
                'hideOverlappingLabels' => true,
                'labels' => [
                    "format" => 'yyyy/MM/dd',
                    // 'datetimeFormatter' => [
                    //     'year' => 'yyyy',
                    //     'month' => 'MM',
                    //     'day' => 'dd',
                    // ]
                ]
            ],
            'tooltip' => [
                'x' => [
                    'format' => "yyyy/MM/dd"
                ]
            ]
        ]);
        // $this->options([
        //     'colors' => $colors, //['#008FFB','#008FFB'],//
        //     'chart' => [
        //         'type' => 'line',
        //         'height' => 430,
        //         'stacked' => false,
        //         'toolbar' => [
        //             'autoSelected' => 'pan',
        //             'show' => false
        //         ],
        //     ],
        //     'stroke' => [
        //         'width' => 3,
        //         // 'show' => true,
        //         // 'colors' => [$color->primary()],
        //         // "curve" =>'straight',
        //     ],
        //     'dataLabels' => [
        //         'enabled' => false,
        //     ],
        //     "fill" => [
        //        "opacity" => 1,
        //     ],
        //     "markers" => [
        //         "size" => 0
        //     ],
        //     'xaxis' => [
        //         'categories' => [],
        //         'hideOverlappingLabels' => true,
        //         // "type" => 'datetime'
        //     ],
        // ]);
    }

    /**
     * 处理图表数据
     */
    protected function buildData()
    {
        $user_id = request('user_id') ? request('user_id') : Admin::user()->id;
        if( $this->setDay ) {

            $setDay = 31 * $this->setDay ;
            $list = UserFoudDay::where('user_id' , $user_id)
                            ->whereDate('day', '>', date('Y-m-d',strtotime('-'.$setDay. ' day')))
                            // ->where('day', '<', date('Y-m-d'))
                            ->orderBy('day', 'desc')->get(['fund_sum', 'day'])
                            ->toArray();
                            // dd(date('Y-m-d',strtotime('-'.$setDay.' day')));
        } else {
            //默认拿最近7条
            $list = UserFoudDay::where('user_id' , $user_id)
                            ->limit(7)
                            ->orderBy('day', 'desc')->get(['fund_sum', 'day'])
                            ->toArray();
        }
        
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
