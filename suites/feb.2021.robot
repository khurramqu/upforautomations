*** Settings ***
Suite Setup             Open Testbrowser
Suite Teardown          Close All Browsers
Library                 SeleniumLibrary
Resource                _keywords.txt
Resource                _mysetup.txt
Library                 XvfbRobot
Library                 String

*** Variables ***
${TMP_PATH}             /tmp

*** Test Cases ***
Login
          Maximize Browser Window
          Go To          ${TESTURL}
          Wait Until Element Is Visible          xpath=//p[contains(.,'Sign In')]
          Click Element          xpath=//p[contains(.,'Sign In')]
          Wait Until Element Is Visible          class=Login_loginCard__2skrc
          Element Should Be Visible          class=fa-times
          Element Should Be Visible          xpath://h2[contains(text(),'Log In')]
          Element Text Should Be          xpath://h2[contains(text(),'Log In')]          Log In
          Element Should Be Visible          xpath://p[contains(text(),'With')]
          Element Text Should Be          xpath://p[contains(text(),'With')]          With
          #Element Should Be Visible          class=FacebookLogin_facebookLogin__3b1gQ
          Element Should Be Visible          class=GoogleLogin_googleLogin__3meAy
          Element Should Be Visible          class=LinkedinLogin_linkedinLogin__2bBmo
          Element Text Should Be          xpath=//label[contains(text(),'Email or Username')]          Email or Username
          Element Should Be Enabled          name=emailOrUserName
          Element Should Be Visible          name=emailOrUserName
          Element Should Be Enabled          name:password
          Element Text Should Be          xpath=//label[contains(text(),'Password')]          Password
          Element Should Be Visible          class=Login_checkboxContainer__14IoI
          #Checkbox Should Not Be Selected          xpath;/html[1]/body[1]/div[4]/div[1]/div[1]/div[1]/div[7]/input[1]
          Element Should Be Visible          id:login
          Element Text Should Be          xpath=//label[contains(.,'Remember me')]          Remember me
          Element Should Be Enabled          id:login
          Element Should Be Visible          id=forgotPassword
          Element Text Should Be          id=forgotPassword          Forgot Password?
          Element Text Should Be          xpath://p[contains(text(),'Not Registered?')]          Not Registered?
          Element Should Be Visible          class:haveAccount          #button sign up
          Element Text Should Be          xpath://button[contains(text(),'Sign up')]          Sign up
          Capture Page Screenshot          login-modal-{index}.png
          Click Element          class:closeModal

Side Main Menu
          Sleep          5
          Click Element          xpath=//i[@id='sideMenuToggleIcon']
          Wait Until Element Is Visible          xpath=//header/div[1]/div[2]/a[5]
          Click Element          link:Portfolio

Portfolio
          Sleep          5
          #breadcrumbs
          Portfolio Breadcrumbs
          Raw Portfolio page
          #create collection
          Click Element          xpath=//div[1]/div[1]/div[2]/div[1]/div[2]/button[1]
          Sleep          3
          Create Collection page
          #Create Collection
          ${number_title}          Generate Random String          1          [NUMBERS]
          ${random_title}          Generate Random String          5          [LETTERS]
          Input Text          id=title          No: ${number_title} Collection ${random_title}
          Capture Page Screenshot          title-{index}.png
          #description
          ${number_description}          Generate Random String          1          [LETTERS]
          ${random_description}          Generate Random String          5          [LETTERS]
          Input Text          id=description          No: ${number_description} Collection ${description1} ${random_description}
          Scroll Element Into View          xpath=//form[1]/div[2]/div[1]/img[1]
          Capture Page Screenshot          description-{index}.png
          #command
          ${id} =          Generate Random String          2          [NUMBERS]
          Choose File          class=ManagePortfolio_FileInputSquare__input__39gdc          ${CURDIR}\\random\\${id}.jpg
          Wait Until Element Is Visible          xpath=//body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[4]/form[1]/div[2]/div[1]/div[1]
          Capture Element Screenshot          xpath=//body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[4]/form[1]/div[2]/div[1]/div[1]
          #          //form[1]/div[2]/div[2]/div[1]
          Sleep          2
          Capture Page Screenshot          capture-{index}.png
          Click Button          xpath=//form[1]/div[3]/button[1]
          Wait Until Element Is Visible          xpath=//div[1]/div[1]/div[2]/div[1]/div[3]/div[3]/button[1]
          Click Button          xpath=//div[1]/div[1]/div[2]/div[1]/div[3]/div[3]/button[1]
          #modal
          Portfolio modal
          #command
          Click Element          xpath=//div[1]/div[1]/div[2]/div[1]/div[4]/div[1]/div[2]/div[3]/a[2]/button[1]
          Wait Until Element Is Visible          class=Profile_profileRightSideContainer__A6iXd
          Capture Element Screenshot          class=Profile_profileRightSideContainer__A6iXd

register
          Maximize Browser Window
          Go To          ${TESTURL}
          Click Element          xpath=//p[contains(.,'Sign In')]
          Wait Until Element Is Visible          xpath=//a[contains(text(),'Signup')]
          Click Element          xpath=//a[contains(text(),'Signup')]
          #Signup modal
          Wait Until Element Is Visible          xpath=//a[contains(text(),'Signup')]
          Element Should Be Visible          xpath=//a[contains(text(),'Signup')]
          Element Should Be Enabled          xpath=//a[contains(text(),'Signup')]
          Element Text Should Be          xpath=//a[contains(text(),'Signup')]          Signup
          Wait Until Element Is Visible          xpath=//a[contains(text(),'Login')]
          Element Should Be Visible          xpath=//a[contains(text(),'Login')]
          Element Should Be Enabled          xpath=//a[contains(text(),'Login')]
          Element Text Should Be          xpath=//a[contains(text(),'Login')]          Login
          Wait Until Element Is Visible          xpath=//h3[contains(text(),'Join Us!')]
          Element Should Be Visible          xpath=//h3[contains(text(),'Join Us!')]
          Element Text Should Be          xpath=//h3[contains(text(),'Join Us!')]          Join Us!
          Wait Until Element Is Visible          xpath=//h4[contains(text(),'Are you looking to hire or get hired?')]
          Element Should Be Visible          xpath=//h4[contains(text(),'Are you looking to hire or get hired?')]
          Element Text Should Be          xpath=//h4[contains(text(),'Are you looking to hire or get hired?')]          Are you looking to hire or get hired?
          Wait Until Element Is Visible          xpath=//form[1]/div[1]/p[1]
          Element Should Be Visible          xpath=//form[1]/div[1]/p[1]
          Checkbox Should Be Selected          name=hire
          Element Text Should Be          xpath=//label[contains(text(),'hire')]          Hire
          Element Text Should Be          css=.SignUp_checkboxWrap__2mSN5:nth-child(1) > label          Hire
          Checkbox Should Not Be Selected          name=get-hired
          Element Text Should Be          xpath=//label[contains(text(),'get hired')]          Get Hired
          Wait Until Element Is Visible          css=.fa-user
          Element Should Be Visible          css=.fa-user
          Element Should Be Visible          name=username
          Element Should Be Enabled          name=username
          Wait Until Element Is Visible          css=.fa-envelope
          Element Should Be Visible          css=.fa-envelope
          Element Should Be Visible          name=email
          Element Should Be Enabled          name=email
          Wait Until Element Is Visible          css=.fa-lock
          Element Should Be Visible          css=.fa-lock
          Element Should Be Visible          name=password
          Element Should Be Enabled          name=password
          Wait Until Element Is Visible          css=.signUp
          Element Should Be Visible          css=.signUp
          Element Should Be Enabled          css=.signUp
          Element Text Should Be          xpath=//button[contains(text(),'Create an account')]          Create an account
          Wait Until Element Is Visible          xpath=//p[contains(text(),'Or Sign up with')]
          Element Should Be Visible          xpath=//p[contains(text(),'Or Sign up with')]
          Element Text Should Be          xpath=//p[contains(text(),'Or Sign up with')]          Or Sign up with
          Wait Until Element Is Visible          xpath=//div[@id='googleLogin']
          Element Should Be Visible          xpath=//div[@id='googleLogin']
          Element Should Be Enabled          xpath=//div[@id='googleLogin']
          Wait Until Element Is Visible          xpath=//div[@id='facebookLogin']
          Element Should Be Visible          xpath=//div[@id='facebookLogin']
          Element Should Be Enabled          xpath=//div[@id='facebookLogin']
          Wait Until Element Is Visible          xpath=//div[@id='linkedinLogin']
          Element Should Be Visible          xpath=//div[@id='linkedinLogin']
          Element Should Be Enabled          xpath=//div[@id='linkedinLogin']
          Capture Page Screenshot          signin-modal-{index}.png

setup Zarko
          Get Hired KW
          #username
          ${username} =          Generate Random String          5          [UPPER]
          ${username} =          Set Variable          ${business1}
          Set Suite Variable          ${username}
          #email
          ${radnom_email} =          Generate Random String          7          [NUMBERS]
          ${radnom_email}=          Set Variable          ${username}-${radnom_email}${email}
          Set Suite Variable          ${radnom_email}
          Input Text          name:username          ${business1}
          Capture Page Screenshot          username-{index}.png
          Input Text          name:email          ${radnom_email}
          Capture Page Screenshot          email-{index}.png
          Input Password          name:password          ${password}
          Click Element          id=createAccount
          Capture Page Screenshot          submit-{index}.png
          #Click Element          xpath://span[contains(text(),'??')]
          #Wait Until Element Is Not Visible          class:modal-body

Login in
          Maximize Browser Window
          Go To          ${TESTURL}
          Wait Until Element Is Visible          xpath=//p[contains(.,'Sign In')]
          Click Element          xpath=//p[contains(.,'Sign In')]
          Capture Page Screenshot          login-{index}.png
          Login modal dialog
          Input Text          name:emailOrUserName          ${business1}
          Input Text          name:password          ${password}
          Click Element          id:login
          Wait Until Element Is Not Visible          xpath://button[contains(text(),'Login')]
          Capture Page Screenshot          login-user-{index}.png
          Wait Until Element Is Visible          xpath=//h2[contains(text(),'Profile Settings')]
          Scroll Element Into View          xpath=//h2[contains(text(),'Profile Settings')]
          Sleep          3
          Wait Until Element Is Visible          name=add-photo
          ${id} =          Generate Random String          2          [NUMBERS]
          Choose File          name=add-photo          ${CURDIR}\\random\\${id}.jpg
          Capture Element Screenshot          name=add-photo
          Sleep          2
          Capture Page Screenshot          capture-{index}.png

populate profile settings and add avatar image
          Capture Page Screenshot          profile-settings-{index}.png
          Input Text          id=firstName          ${username}
          Input Text          id=lastName          ${username}
          Click Button          id=male
          Input Text          id=dateOfBirth          06-11-1994
          Input Text          id=description          ${description}
          #Country
          Scroll Element Into View          id=language__fluency
          Click Element          name=country
          Input Text          name=country          United States
          Capture Page Screenshot          country-{index}.png
          Click Element          css=.DropDownSearch_item__5UoLs:nth-child(1)          #United States
          Wait Until Element Is Not Visible          xpath=//div[5]/div/label/div          #Country
          Element Should Not Be Visible          xpath=//div[5]/div/label/div
          Input Text          id=state          Nevada
          Input Text          id=city          Las Vegas
          Input Text          id=postal          postal
          Input Text          id=street          Random Street
          Element Should Be Enabled          css=.MultipleSelectSearch_input__34N1Q
          #language
          Scroll Element Into View          xpath=//button[contains(.,'Save')]
          Capture Page Screenshot          description-{index}.png
          Input Text          css=.MultipleSelectSearch_input__34N1Q          English
          Click Element          xpath=//div[contains(text(),'English')]
          Capture Page Screenshot          language-{index}.png
          Click Element          xpath=//p[contains(.,'Fluency')]
          Click Element          xpath=//div[2]/div/div[4]          #Fluency Native
          Sleep          2
          Capture Page Screenshot          language-{index}.png
          Click Element          xpath=//button[@type='submit']
          Wait Until Element Is Visible          xpath=//div[contains(text(),'Profile Saved Successfully')]
          ${alert-success} =          Get Text          xpath=//div[contains(text(),'Profile Saved Successfully')]
          Log To Console          ${alert-success}
          Capture Element Screenshot          xpath://div[contains(text(),'Profile Saved Successfully')]
          Capture Page Screenshot          saved-profile-settings-{index}.png

Avatar picture
          Scroll Element Into View          xpath=//h2[contains(text(),'Profile Settings')]
          Sleep          3
          ${id} =          Generate Random String          2          [NUMBERS]
          Choose File          name:add-photo          ${CURDIR}\\random\\${id}.jpg
          Capture Element Screenshot          name=add-photo
          Sleep          2
          Capture Page Screenshot          capture-{index}.png

post a contest
          [Documentation]          Add Title and Description
          Login Business KW
          #mini-dashboard
          #post a job button
          #Click Element          clas=#postAJob
          mini-dashboard
          Click Element          css=#postAJob
          Breadcrumb post a job
          Post a job header
          Job description
          Select Category and Skills section
          Select Job Type section
          Scroll Element Into View          xpath=//h2[contains(text(),'Post a project?')]
          Capture Page Screenshot          title-{index}.png
          ${number_title}=          Generate Random String          5          [NUMBERS]
          ${random_title}=          Generate Random String          2          [LETTERS]
          Element Should Be Visible          id=jobTitle
          Element Should Be Enabled          id=jobTitle
          Input Text          id=jobTitle          No: ${number_title} Testing Contest ${random_title}
          Capture Page Screenshot          title-{index}.png
          Element Should Be Visible          id=jobDescription
          Element Should Be Enabled          id=jobDescription
          ${random_description}=          Generate Random String          20          [LETTERS]
          Input Text          id=jobDescription          My page is based on scientific and belief announcements or publicationsy${number_title} ${random_title} ${description}
          Capture Page Screenshot          title-{index}.png
          Sleep          1
          ${id} =          Generate Random String          2          [NUMBERS]
          Element Should Be Enabled          id=upload
          Choose File          id=upload          ${CURDIR}\\random\\${id}.jpg
          Capture Page Screenshot          uploaded-file-{index}.png
          ${letter}          Generate Random String          1          [LETTERS]
          ${letter1}          Generate Random String          1          [LETTERS]
          ${letter2}          Generate Random String          1          [LETTERS]
          Wait Until Element Is Visible          id=category
          Scroll Element Into View          xpath=//h3[contains(text(),'Select Job Type')]
          Element Should Be Enabled          id=category
          Click Element          id=category
          Wait Until Element Is Visible          xpath=//div[contains(text(),'Development and IT experts')]
          Click Element          xpath=//div[contains(text(),'Development and IT experts')]
          Capture Page Screenshot          category-{index}.png
          Wait Until Element Is Visible          xpath=//p[contains(text(),'Sub Category')]
          Element Should Be Enabled          xpath=//p[contains(text(),'Sub Category')]
          Click Element          xpath=//p[contains(text(),'Sub Category')]
          Wait Until Element Is Visible          xpath=//div[contains(text(),'Development and IT experts')]
          Click Element          xpath=//div[contains(text(),'Development and IT experts')]
          Capture Page Screenshot          sub-category-{index}.png
          Wait Until Element Is Visible          xpath=//p[contains(text(),'Sub Category')]
          Element Should Be Enabled          xpath=//p[contains(text(),'Sub Category')]
          Click Element          xpath=//p[contains(text(),'Sub Category')]
          Wait Until Element Is Visible          xpath=//div[contains(text(),'Airbnb Developers')]
          Click Element          xpath=//div[contains(text(),'Airbnb Developers')]
          Click Element          class=fa-times
          Capture Page Screenshot          sub-category-{index}.png
          Wait Until Element Is Visible          id=skills
          Element Should Be Enabled          id=skills
          Input Text          id=skills          ${letter}a${letter1}a${letter2}a
          Sleep          1
          Press Keys          id=skills          RETURN
          Sleep          3
          #Select Job Type
          Scroll Element Into View          xpath=//h3[contains(text(),'Optional Upgrades')]
          Click Element          id=contest
          Scroll Element Into View          xpath=//h3[contains(text(),'Optional Upgrades')]
          Capture Page Screenshot          contest-{index}.png
          Wait Until Element Is Visible          xpath=//h3[contains(text(),'Number of Days')]
          Element Should Be Visible          xpath=//h3[contains(text(),'Number of Days')]
          Element Text Should Be          xpath=//h3[contains(text(),'Number of Days')]          Number of Days
          Wait Until Element Is Visible          xpath=//button[contains(text(),'1 Day')]
          Element Should Be Visible          xpath=//button[contains(text(),'1 Day')]
          Element Text Should Be          xpath=//button[contains(text(),'1 Day')]          1 Day
          Wait Until Element Is Visible          xpath=//button[contains(text(),'2 Days')]
          Element Should Be Visible          xpath=//button[contains(text(),'2 Days')]
          Element Text Should Be          xpath=//button[contains(text(),'2 Days')]          2 Days
          Wait Until Element Is Visible          name=numberOfDays
          Element Should Be Enabled          name=numberOfDays
          Wait Until Element Is Visible          xpath=//h3[contains(text(),'Select Prize Amount')]
          Element Should Be Visible          xpath=//h3[contains(text(),'Select Prize Amount')]
          Element Text Should Be          xpath=//h3[contains(text(),'Select Prize Amount')]          Select Prize Amount
          Wait Until Element Is Visible          name=prize
          Element Should Be Enabled          name=prize
          Wait Until Element Is Visible          xpath=//h3[contains(text(),'Optional Upgrades')]
          Element Should Be Visible          xpath=//h3[contains(text(),'Optional Upgrades')]
          Element Text Should Be          xpath=//h3[contains(text(),'Optional Upgrades')]          Optional Upgrades
          Log To Console          class=PostJob_postJobPreview__2iJLy
          Capture Page Screenshot          preview-contest-{index}.png
          Capture Element Screenshot          class=PostJob_postJobPreview__2iJLy
          ${prize}=          Generate Random String          3          [NUMBERS]
          Input Text          name=prize          ${prize}
          #Wait Until Element Is Visible          class=TriangleBadge_container__2Eed5          #Urgent
          Scroll Element Into View          class=PostJob_postJobPreview__2iJLy
          Log To Console          class=PostJob_postJobPreview__2iJLy
          Capture Element Screenshot          class=PostJob_postJobPreview__2iJLy
          #Wait Until Element Is Visible          xpath=//button[contains(text(),'Login and Post')]
          #Element Should Be Enabled          xpath=//button[contains(text(),'Login and Post')]
          #Element Text Should Be          xpath=//button[contains(text(),'Login and Post')]          Post
          Wait Until Element Is Visible          xpath=//button[contains(text(),'Contest')]
          Scroll Element Into View          xpath=//button[contains(text(),'Contest')]
          Click Element          xpath=//button[contains(text(),'Contest')]
          Capture Page Screenshot          post-a-contest-{index}.png
          Sleep          5
          Capture Page Screenshot          slika-{index}.png
          Navheader Business
          Click Element          id=myJobs
          Wait Until Element Is Visible          class=MyJobs_myJobsTable__ouUeb
          Wait Until Element Is Visible          class=MyJobsJobCard_myJobsCard__1S7w0
          Capture Element Screenshot          class=MyJobs_myJobsTable__ouUeb
          Capture Page Screenshot          my-jobs-{index}.png
          LogoutKW
