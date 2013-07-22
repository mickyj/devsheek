User.destroy_all
Developer.destroy_all
Style.destroy_all

u1 = User.create(:name => 'Tarun', :email => 'tarun@gmail.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:name => 'Steve', :email => 'steve@gmail.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:name => 'Hui', :email => 'hui@gmail.com', :password => 'a', :password_confirmation => 'a')
u4 = User.create(:name => 'Mike', :email => 'mike@gmail.com', :password => 'a', :password_confirmation => 'a')


p1 = Style.create(:name => 'corporate', :shoe => 'black leather', :beard => 'cleanshaven', :drink => 'monster', :browser => 'ie6')
p2 = Style.create(:name => 'whitehat', :shoe => 'converse', :beard => 'full', :drink => 'redbull', :browser => 'firefox')
p3 = Style.create(:name => 'blackhat', :shoe => 'thongs', :beard => 'goatee', :drink => 'mother', :browser => 'opera')
p4 = Style.create(:name => 'hipster', :shoe => 'crocs', :beard => 'moustache', :drink => 'v', :browser => 'chrome' )
p5 = Style.create(:name => 'freelancer', :shoe => 'reeboks', :beard => 'bumfluff', :drink => 'coke', :browser => 'safari')

t1 = Developer.create(:name => 'Yehuda Katz', :chictype => 'RubyDev')
t2 = Developer.create(:name => 'Brendan Eich', :chictype => 'JSBastard')
t3 = Developer.create(:name => 'Tim Berners-Lee', :chictype => 'WWW')

t1.style = p1
t1.save
t2.style = p2
t2.save
t3.style = p3
t3.save

u1.developers << t1 << t2 << t3