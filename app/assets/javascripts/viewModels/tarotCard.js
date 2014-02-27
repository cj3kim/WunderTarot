WunderTarot.ViewModels.TarotCard = function(model, options) {
  console.log("WunderTarot - ViewModels - TarotCard");
  console.log(model);
  var _this = this;

  _this.name = model.get('name');

  _this.imagePath = (function () {
    var name = _this.name.replace(/ /g, "_").toLowerCase();

    return _.template("/assets/major_arcana/<%= name %>.jpg", { name: name });
  })();

};
