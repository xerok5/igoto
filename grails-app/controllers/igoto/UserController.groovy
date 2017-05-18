package igoto

import java.util.regex.Matcher
import java.util.regex.Pattern

class UserController {
    def create(){
//        User user = new User()
//        [user: user]
    }

    def index() {
        def userlist = User.list(params);
        [userlist:userlist]
    }

    def save(){
       def userinfo = new User(params);
        def info=userinfo.email;
        def testArray = (String[]) ['email@example.com',
                                    'firstname.lastname@example.com',
                                    'email@subdomain.example.com',
                                    'firstname+lastname@example.com',
                                    'email@123.123.123.123',
                                    'email@[123.123.123.123]',
                                    '"email"@example.com',
                                    '1234567890@example.com',
                                    'email@example-one.com',
                                    '_______@example.com',
                                    'email@example.name',
                                    'email@example.museum',
                                    'email@example.co.jp',
                                    'firstname-lastname@example.com',
                                    'very.unusual."@".unusual.com@example.com',
                                    'very."(),:;<>[]".VERY."very@\\\\\\ \"very".unusual@strange.example.com',


                                    'plainaddress',
                                    '#@%^%#$@#$@#.com',
                                    '@example.com',
                                    'Joe Smith <email@example.com>',
                                    'email.example.com',
                                    'email@example@example.com',
                                    '.email@example.com',
                                    'email.@example.com',
                                    'email..email@example.com',
                                    'あいうえお@example.com',
                                    'email@example.com (Joe Smith)',
                                    'email@example',
                                    'email@-example.com',
                                    'email@example.web',
                                    'email@111.222.333.44444',
                                    'email@example..com',
                                    'Abc..123@example.com',
                                    'just"not"right@example.com',
                                   ];
//        Pattern r = Pattern.compile(testArray);
//
//        // Now create matcher object.
//        Matcher m = r.matcher(info);
//        if (m.find( )) {
//            System.out.println("email valid" );
//
//        }else {
//            System.out.println("email not valid");
//        }
//        <g:each ($emails as $email)> {
//            if (preg_match("/YOURREGEX/", $email))
//                echo "<div style='color:green'>".$email." is valid.</div>";
//            else
//                echo "<div style='color:red'>".$email." is invalid.</div>";
//        }
        if(userinfo.save()){


            redirect (action: "index")
        }

        else
    {
        render(view: "create", model: [info: info,test:testArray])
        }
    }

    def edit(){
        def user = User.get(params.id);
        [userinfo:user]
    }
}
