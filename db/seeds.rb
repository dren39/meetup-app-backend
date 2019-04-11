user1 = User.create(username:'dren', password_digest: '12345', fullname: 'david ren')

user2 = User.create(username:'ekos', password_digest: '123456', fullname: 'elizabeth kosowski')

events1 = Event.create(name: 'flatiron talks', event_date: Date.new(2019, 4, 15), event_time: '9:00pm', address: '11 broadway, nyc, 10004', description: 'a tech talk hosted at the prestigious flatiron coding bootcamp for up and coming developers', available: 16, price: 0)

events2 = Event.create(name: 'girls who code', event_date: Date.new(2019, 5, 20), event_time: '7:00pm', address: '5 broadway, nyc, 10004', description: 'a tech talk featuring an all womens panel', available: 20, price: 10)

appointment1 = Appointment.create(admin: true, user_id: user1.id, event_id: events1.id)

appointment2 = Appointment.create(admin: false, user_id: user2.id, event_id: events1.id)

appointment3 = Appointment.create(admin: false, user_id: user1.id, event_id: events2.id)

appointment4 = Appointment.create(admin: true, user_id: user2.id, event_id: events2.id)
