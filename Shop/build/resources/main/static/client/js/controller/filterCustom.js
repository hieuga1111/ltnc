$(".authorCB").click(function (){
    if($(this).prop("checked") == true){
        id=$(this).data('id');
        $("#getAuthorID").val(id);
        $("#getPublishID").val(0);
        console.log(id);
    }
});
$(".publishCB").click(function (){
    if($(this).prop("checked") == true){
        id=$(this).data('id');
        $("#getPublishID").val(id);
        $("#getAuthorID").val(0);
        console.log(id);
    }
});
$("#set_filter").click(function (){
    if($("#getAuthorID").val()!=0){
        window.location.href="/book-by/filtered-by-author?select_author="+$("#getAuthorID").val();
    }
    else if($("#getPublishID").val()!=0){
        window.location.href="/book-by/filtered-by-publish?select_publish="+$("#getPublishID").val();
    }
});