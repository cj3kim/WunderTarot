WunderTarot.Views.MajorArcana = Backbone.View.extend({
  el: "div#major-arcana-display",

  initialize: function (options) {
    this.bindView();

  },

  bindView: function () {
    var self = this;
    var collection = new WunderTarot.Collections.MajorArcana;

    collection.fetch({
      success: function (_collection) {
        console.log("WunderTarot - Views - MajorArcana");
        console.log("Successfully fetched the major arcana cards");

        var viewModel = new WunderTarot.ViewModels.MajorArcana(_collection);

        kb.applyBindings(viewModel, self.$el[0]);
      },
      error: function (_collection) {
        console.log("WunderTarot - Views - MajorArcana");
        console.log("There was an error fetching the major arcana cards");
      }
    });
  },

});
