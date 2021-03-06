Meteor.startup () ->
  if @landers.find().count() is 0
    user =
      name: 'Pat'
      email: 'pat@patscott.io'
      password: 'devel'

    userId = Accounts.createUser(user);

    @landers.insert
      _id: 'main'
      owner: userId
      brand: 'Landr'
      url: 'landr'
      lead: 'A landing page for the real world.'
      hasSignedUpLead: 'Thanks for signing up.'
      views: 0
      emailsCollected: 0
      phonesCollected: 0
      numberOfLeads: 0
      createAccount: true
      collectEmail: true
      collectPhone: true
      collectName: true
      intro: {
        title: "Stop being a wantraprenuer and be an entreprenuer"
        lead: "Validate your ideas with real people. Get real data to know whether or not to pivot."
      }
      services: [
        {
          order: 1
          name: 'Pitch on the go'
          description: 'With a customized app on your home screen, you\'ll be ready to pitch your ideas at a moment\'s notice and get the validation you need to prove your idea is valuable.'
          iconClass: 'fa fa-briefcase'
          interested: 0
        }
        {
          order: 2
          name: 'Get started quickly'
          description: 'Our streamlined process will have you ready to go in just a couple of minutes.'
          iconClass: 'fa fa-clock-o'
          interested: 0
        }
        {
          order: 3
          name: 'Grow your clientele'
          description: 'Build up your email list and grow your clientele by collecting contacts in the field.'
          iconClass: 'fa fa-group'
          interested: 0
        }
        {
          order: 4
          name: 'Real-time Reporting'
          description: 'You and your teammates can keep track of how many people you\'ve collected and contacted for each of your ideas, all organized in a single place.'
          iconClass: 'fa fa-tachometer'
          interested: 0
        }
      ]