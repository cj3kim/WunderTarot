WunderTarot.ViewModels.MajorArcana = function (options) {
  var _this = this;

  var $el = options.$el

  var factory = new kb.Factory();
  factory.addPathMapping("tarotCard.models", WunderTarot.ViewModels.TarotCard);

  this.searchValue = ko.observable("");

  this.filterFunction = function (model) {
    var regex = new RegExp(_this.searchValue(), "i");
    console.log("WT - VMs - filterFunction");
    console.log(regex);

    var name  = model.get('name');
    var bool = regex.test(name);

    regex = null
    name  = null

    return bool;
  };


  var newOptions = {
    factory: factory,
    path: "tarotCard",
    filters: _this.filterFunction
  };

  this.majorArcanaCards = kb.collectionObservable(options.collection, newOptions);


  this.computedValue = ko.computed(function () {
    console.log(_this.searchValue());
  });

};
