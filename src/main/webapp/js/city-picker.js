//1.点击每一个城市 -- 上面“城市”和“选择“都会发生变化，下面地名也会发生变化
//2.点击上方的地名 -- 会去到相应的类别，上面也同样会发生变换

var provinceData,cityData,areaData,streetData
var type1="province"
var code="CITY_CODE"
var testData={

}
function showProvince(tar){
    let postData,choose,code,
    num=$(".sd-span").length,
    index=tar?$(".sd-span").index(tar):0,
    no=tar?tar.data("no"):""
    $(".selectAddress").hasClass("isHidden")&&$(".selectAddress").removeClass("isHidden")
    $(".address-content").empty()
    switch(index){
        case 0:{
            num=0
            break
        };
        case 1:{
            num=1
            no=tar.prev().data("no")
            break
        };
        case 2:{
            num=2
            no=tar.prev().data("no")
            break
        }
    }
    switch(num){
        case 0:{
            choose="选择省/自治区"
            postData={}
            code="PROVINCE_CODE"
        };
        case 1:{
            choose="选择城市/地区"
            postData={provinceno:no}
            code="CITY_CODE"
        };
        case 2:{
            choose="选择区县"
            postData={cityno:no}
            code="AREA_CODE"
        };
        case 3:{
            choose="选择配送区域"
            postData={areano:no}
            code="STREET_CODE"
        }
    }
    
    // $(".selectTitle>.sd-span").remove() //省-没有 市-保留省 区-保留省市 街道-保留省市区
    $(".ts-span").text(choose)  //省-选择省/自治区 市-选择城市/地区 区-选择区县 街道-选择配送区域
    tar&&$(".selectAddress").prepend("<span class='sd-span'>"+tar.text()+"</span>") //点击下方城市添加到上方
    // $(".address-content").addClass("province")
    //传参：省-不需要传参 市-PROVINCE_CODE 区-CITY_CODE 街道-AREA_CODE
    //得到的数据中放到data中 省-PROVINCE_CODE 市-CITY_CODE 区-AREA_CODE 街道-STREET_CODE
    //处理下方数据

    $.post("ShowAddress",postData,function(data){
        console.log(data)
        data.forEach(function(item,index){
            $(".address-content").append("<span data-no="+item[code]+">"+item.SHORT_NAME+"</span>")
        })
    })
}
//点击input框
$(".province").click(function(){
    showProvince()
})

//点击下面
$(".address-content>span").click(function(e){
    let tar=$(e.target)
    showProvince(tar)
    // let tar=$(e.target)
    // console.log(tar)
    // $(".selectAddress").prepend("<span class='sd-span'>"+tar.text()+"</span>")
    // if(type1=="province"){
    //     $(".ts-span").text("选择城市/地区")
    // }else if(type1="city"){
    //     $(".ts-span").text("选择区县")
    // }
    // $.post("",{province_no:tar.data("no"),type:type1},function(data){
    //     type1="city"
    //     code="AREA_CODE"
    //     $(".address-content").empty()
    //     data.forEach(function(item,index){
    //         $(".address-content").append("<span data-no="+item[code]+">"+item.SHORT_NAME+"</span>")
    //     })
    // })
})
//点击上方
$(".selectTitle>.sd-span").click(function(e){
    let tar=$(e.target)
    showProvince(tar)
    // let index=$(".sd-span").index(tar)
    // console.log($(".sd-span").index(tar))
    // switch(index){
    //     case 0:{
    //         showProvince()
    //         break
    //     };
    //     case 1:{

    //     }
    // }
})

$(".closeIcon").click(function(){
    $(".selectAddress").addClass("isHidden")
})