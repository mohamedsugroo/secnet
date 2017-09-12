$(document).ready(function(){

  var toggleX = document.getElementById("fullcoverModel");

  var editAdd = [editList, addList];

  function editList(){
    //  alert('EDIT');

    $("#fullcoverModel").removeClass("fadeIn");
    $("#fullcoverModel").addClass("fadeOut");

    setTimeout(function (){
      $("#fullcoverModel").addClass("hidden");
    }, 1000);


  }
  function addList(){
    //  alert('ADD');
     $("#fullcoverModel").removeClass("fadeOut hidden ");
     $("#fullcoverModel").addClass("fadeIn");
  }


  $('#toggleWorkHistoryTwo').click(function(e){
    e.preventDefault();
    editAdd.reverse()[0]();
  });

  $('#toggleWorkHistory').click(function(e){
    e.preventDefault();
    editAdd.reverse()[0]();
  });

});
