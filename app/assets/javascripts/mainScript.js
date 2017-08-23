$(document).ready(function(){

    $('.customSearchInput').change(function() {

      $(".call_to_action_text").addClass("hidden");
      $(".gab").addClass("hidden");
      $(".jobsList").removeClass("hidden");
      $(".wrapper_search_box").addClass("wrapperTextChange");

      console.log("Hello Search Box");

    });

});
