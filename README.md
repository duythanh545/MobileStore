## Mobile Store

#Project Description
This project is a B2C (Business to Consumer) e-commerce application developed using Flutter. It allows users to browse through a variety of products, add them to their cart, and make purchases. The application provides a user-friendly interface for an enhanced shopping experience.

# Feature
_ Cart
_ FilterByCartegory
_ Checkout
_ Show product and product detail
_ Register and Login
_ Show user profile
_ Promotion
_ Search
_ Verified account via email
_ Forgot password via email
_ Show order and order detail
_ Change language

# Technological use
_ Dio and Retrofit for call API.
_ RxDart for stream management.
_ Bloc for state management.
_ Hive for save list of item of cart before checkout in local. 
_ Localization for language change.

# Project Structure
_ assets: Contains static files such as images and icons.
_ lib: Contains the main application code.
    _ l10n: Contain Endlish and Vietnamese language script.
    _ languages: Set up language.
    _ src
        _ api: Contain all api of this app.
        _ constant: Contain all color, validate and global variable.
        _ core: Defines data models for all api of this app.
        _ feature: Contain all of feature of this app.

# Setup
 1. Add sql file ..\back_end\Database\MobileStoreDatabase.sql to MySQL.
 2. Run file ..\back_end\MobileStore-9.11.1.jar using following command java -jar MobileStore-9.11.1.jar .
 3. Change your local ip address in this file ..\lib\src\api\api_service.dart and ..\lib\src\api\api_service.g.dart .
 4. Run this app.

# Thanks for using my app
