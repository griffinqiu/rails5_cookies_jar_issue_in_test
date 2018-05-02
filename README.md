I need to use cookies_jar of ActionDispatch::TestRequest to set cookies in Integration Test. The cookies.signed have been removed in rails 5 in Integration Test.

However it will make some dirty cookies to following test. 
The controller tests which depend on cookies value will be failed after the
integration test run. It worked in rails 4.

For example:

``` zsh
➜  rails5_cookies_jar_issue_in_test git:(master) ✗ rails test --seed 12133
Running via Spring preloader in process 44614
/Users/griffin/github/rails5_cookies_jar_issue_in_test/db/schema.rb doesn't
exist yet. Run `rails db:migrate` to create it, then try again. If you do not
intend to use a database, you should instead alter
/Users/griffin/github/rails5_cookies_jar_issue_in_test/config/application.rb to
limit the frameworks that will be loaded.
Run options: --seed 12133

# Running:

"integration test"
."controller test"
F

Failure:
SessionsControllerTest#test_should_be_keep_site_tracking_id_after_visit_login
[/Users/griffin/github/rails5_cookies_jar_issue_in_test/test/controllers/sessions_controller_test.rb:8]:
Expected: "123"
  Actual: "tracking_id_321"


bin/rails test test/controllers/sessions_controller_test.rb:4



Finished in 0.157933s, 12.6636 runs/s, 12.6636 assertions/s.
```

``` zsh
➜  rails5_cookies_jar_issue_in_test git:(master) ✗ rails test --seed 12133
Running via Spring preloader in process 44614
/Users/griffin/github/rails5_cookies_jar_issue_in_test/db/schema.rb doesn't
exist yet. Run `rails db:migrate` to create it, then try again. If you do not
intend to use a database, you should instead alter
/Users/griffin/github/rails5_cookies_jar_issue_in_test/config/application.rb to
limit the frameworks that will be loaded.
Run options: --seed 12133

# Running:

"integration test"
."controller test"
F

Failure:
SessionsControllerTest#test_should_be_keep_site_tracking_id_after_visit_login
[/Users/griffin/github/rails5_cookies_jar_issue_in_test/test/controllers/sessions_controller_test.rb:8]:
Expected: "123"
  Actual: "tracking_id_321"


bin/rails test test/controllers/sessions_controller_test.rb:4



Finished in 0.157933s, 12.6636 runs/s, 12.6636 assertions/s.
```
