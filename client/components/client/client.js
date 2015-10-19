const subManager = new SubsManager();

BlazeComponent.extendComponent({
  template() {
    return 'client';
  },
  onCreated(){
	this.autorun(()=>{
		const handle = subManager.subscribe("card", Session.get('currentCard'));
	});  
  },
  card(){
	const cardId = Session.get('currentCard');
    let card = Cards.findOne(cardId);
	
	return card;
  }       

}).register('client');

