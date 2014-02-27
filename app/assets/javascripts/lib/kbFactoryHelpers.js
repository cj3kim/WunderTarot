
BandPatron.FactoryHelpers = {};

BandPatron.FactoryHelpers.setFactory = function (userModel) {
  var hbrCollection = userModel.get('humanBondRequests');
  var hbCollection  = userModel.get('humanBonds');
  hbCollection.url(userModel)
  hbrCollection.url(userModel)

  var factory = new kb.Factory();

  if (userModel.get('patron') === true) {
    factory.addPathMapping("patron", userModel);
    factory.addPathMapping("band.models", BandPatron.ViewModels.Band);
  } else {
    factory.addPathMapping("band", userModel);
    factory.addPathMapping("offerToBand.models", BandPatron.ViewModels.OfferToBand);
    factory.addPathMapping("acceptedProposals.models", BandPatron.ViewModels.AcceptedProposals);
    factory.addPathMapping("patron.models", BandPatron.ViewModels.Patron);
  }

  factory.addPathMapping("hbr.collection", hbrCollection);
  factory.addPathMapping("hb.collection",  hbCollection);

  return factory;
}

