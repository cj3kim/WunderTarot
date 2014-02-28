WunderTarot.ViewModels.TarotCard = function(model, options) {
  console.log("WunderTarot - ViewModels - TarotCard");
  console.log(model);
  var _this = this;

  _this.name = model.get('name');
  _this.cardName = "The " + model.get('name');

  _this.imagePath = (function () {
    var name = _this.name.replace(/ /g, "_").toLowerCase();

    return _.template("/assets/major_arcana/<%= name %>.jpg", { name: name });
  })();

  _this.meaning = model.get('meaning');

  _this.bgImagePath = "background-image: url('" + this.imagePath + "');";

  _this.flipMe = function (data, e) {
    console.log("Wt - VMs - TarotCard");

    var $container = $(e.currentTarget);
    var $card =  $container.find('.card');
    console.log($card);

    var bool = $card.hasClass('flipped');
    if (bool) {
      $card.removeClass('flipped');
    } else {
      $card.addClass('flipped');
    }
    return false;
  };
};
