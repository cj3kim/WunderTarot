WunderTarot.ViewModels.TarotCard = function(model, options) {
  console.log("WunderTarot - ViewModels - TarotCard");
  console.log(model);
  var _this = this;
  var majorArcana = model.get("major_arcana");

  var name = model.get('name');
  var suit = model.get('suit');


  _this.cardName = majorArcana ? ("The " + name) : (name + " of " + suit.charAt(0).toUpperCase() + suit.substring(1).toLowerCase());

  _this.imagePath = (function () {
    var name = model.get('name').replace(/ /g, "_").toLowerCase();

    if (majorArcana) {
      return _.template("/assets/major_arcana/<%= name %>.jpg", { name: name });
    } else {
      return _.template("/assets/minor_arcana/<%= name %>_of_<%= suit %>.jpg", { name: name, suit: suit });
    }
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
