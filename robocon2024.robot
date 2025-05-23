*** Settings ***
Test Setup      Generate Random Number


*** Variables ***
${RANDOM_FAIL}      0

*** Test Cases ***

Verify User Registration Functionality
    [Tags]      User
    Will Test Fail

Test Product Search and Filtering Options
    [Tags]      Products    Accessibility
    Will Test Fail

Validate Add to Cart and Checkout Process
    [Tags]      Products    Payment
    Will Test Fail

Check Order History and Transaction Details
    [Tags]      User    Products    Payment
    Will Test Fail

Verify Product Reviews and Ratings Display
    [Tags]      Products
    Will Test Fail

Test User Account Password Reset Functionality
    [Tags]      User
    Will Test Fail

Validate Guest Checkout Option
    [Tags]      Payment
    Will Test Fail

Verify Newsletter Subscription Feature
    [Tags]      User    Marketing
    Will Test Fail

Test Product Page Responsiveness on Different Devices
    [Tags]      Accessibility
    Will Test Fail

Validate Payment Gateway Integration
    [Tags]      Payment
   Will Test Fail

Test Account Profile Update and Validation
    [Tags]      User
    Will Test Fail

Verify Discount and Coupon Code Application
    [Tags]      Payment
    Will Test Fail

Test Wishlist Functionality
    [Tags]    User    Products
    Will Test Fail

Validate Email Notifications for Order Status
    [Tags]      User
    Will Test Fail

Check Search Engine Optimization (SEO) Tags
    [Tags]      Marketing
    Will Test Fail

Verify User Logout Functionality
    [Tags]      User
    Will Test Fail

Test Social Media Integration for Product Sharing
    [Tags]      User        Marketing
    Will Test Fail

Validate Image Upload and Display on Product Pages
    [Tags]      Products
    Will Test Fail

Test Account Deactivation and Reactivation
    [Tags]      User
    Will Test Fail

Verify Cross-browser Compatibility of the Webstore
    [Tags]      Accessibility
    Will Test Fail

*** Keywords ***
Generate Random Number
    ${RANDOM_FAIL}=     Evaluate        random.randint(1,20)
    Set Test Variable       ${RANDOM_FAIL}

Will Test Fail
    IF    ${RANDOM_FAIL} > 15
        Fail
    END

