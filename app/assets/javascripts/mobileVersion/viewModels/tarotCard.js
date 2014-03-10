WunderTarot.ViewModels.TarotCard = function(model, options) {
  var _this = this;
  var majorArcana = model.get("major_arcana");

  var name = model.get('name');
  var suit = model.get('suit');


  if (majorArcana) {
    var article = "The ";
    switch (name) {
      case 'Judgement':
        article = "";
        break;
      case 'Death':
        article = "";
        break;
      case 'Justice':
        article = "";
        break;
      case 'Strength':
        article = "";
        break;
      case 'Temperance':
        article = "";
        break;
      case 'Wheel of Fortune':
        article = "";
        break;
      default:
        // code
    }
    _this.cardName = article + name;
  } else {
    _this.cardName =  name + " of " + suit.charAt(0).toUpperCase() + suit.substring(1).toLowerCase();
  }

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
    var $container = $(e.currentTarget);
    var $card =  $container.find('.card');

    var bool = $card.hasClass('flipped');
    if (bool) {
      $card.removeClass('flipped');
    } else {
      $card.addClass('flipped');
    }
    return false;
  };
};
