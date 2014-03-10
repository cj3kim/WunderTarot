WunderTarot.Views.AllCards = Backbone.View.extend({
  initialize: function (options) {
    this.bindView();
  },

  bindView: function () {
    var self = this;
    var collection = new WunderTarot.Collections.All;

    collection.fetch({
      success: function (_collection) {
        var options = {
          collection: _collection,
          $el: this.$el
        };

        var viewModel = new WunderTarot.ViewModels.AllCards(options);

        kb.applyBindings(viewModel, self.el);
      },
      error: function (_collection) {
        console.log("WunderTarot - Views - AllCards");
        console.log("There was an error fetching the major arcana cards");
      }
    });
  },

});
