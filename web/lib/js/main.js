function loginClick() {
    window.location.replace("/CourseProject/login");
}
function logoutClick() {
    document.cookie = 'cakeses=; expires=Thu, 01-Jan-70 00:00:01 GMT;';
    location.reload();
}

function addCakeToOrder(){
    var select=$('#all_cakes');
    var cakeId=select.val();
    var cakeName=$( "#all_cakes option:selected" ).text();
    if (cakeId==undefined || cakeName==undefined ){
        return;
    }
    var target=$('#order_target');
    var newdiv=jQuery('<div/>',{
        class: 'order_item'
    });
   jQuery('<div/>',{
       class: 'id_item hidden',
       text: cakeId
   }).appendTo(newdiv);
   jQuery('<span/>',{
       text:cakeName
   }).appendTo(newdiv);
   jQuery('<input/>',{
       class: 'count',
       value:1
   }).appendTo(newdiv);
   newdiv.appendTo(target);
   $("#all_cakes option[value='"+cakeId+"']").remove();
}

function makeOrder(){
    var dat=[];
    $(".order_item").each(function (){
       var iter={};
       iter.cakeid=Number($(this).find('.id_item').text());
       iter.countc=Number($(this).find('.count').val());
       dat.push(iter);
    });
    $.ajax({
        url:'/CourseProject/addOrder',
        data:JSON.stringify(dat),
        contentType:'application/json',
        method:"POST"
    }).done(function(){
        window.location.replace("/CourseProject/orders");
    });
}

function deleteOrder(id){
    $.ajax({
       url:'/CourseProject/deleteOrder?id='+id,
       method:"POST"
    }).done(function(){
        location.reload();
    });
}

