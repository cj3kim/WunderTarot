WunderTarot.ViewModels.MajorArcana = function (collection) {

  var factory = new kb.Factory();
  factory.addPathMapping("tarotCard.models", WunderTarot.ViewModels.TarotCard);

  var options = {
    factory: factory,
    path: "tarotCard"
  };

  this.majorArcanaCards = kb.collectionObservable(collection, options);
};
