Since this the top google result, this is what worked for me:

Install RimRaf:

npm install rimraf -g

And in the project folder delete the node_modules folder with:

rimraf node_modules

npm install typescript@">=3.1.1 <3.2.0" 

ng6+ (Cli 6.0+): features simplified commands

First, update your Cli

npm install -g @angular/cli
npm install @angular/cli
ng update @angular/cli
Then, update your core packages

ng update @angular/core
If you use RxJS, run

ng update rxjs
It will update RxJS to version 6 and install the rxjs-compat package under the hood.

If you run into build errors, try a manual install of:

npm i rxjs-compat
npm i @angular-devkit/build-angular
Lastly, check your version

ng -v

Or 
ng update @angular/cli @angular/core --allow-dirty

$ npm install -g npm-check-updates
$ ncu -u
$ npm install 
[EDIT] A slightly less intrusive (avoids a global install) way of doing this if you have a modern version of npm is:

$ npx npm-check-updates -u
$ npm install 

ng g m Authentication
ng generate component login
npm install ngx-bootstrap --save
ng g m shared
ng g c auth-navbar
ng g c auth-sidebar

สรร้าง content กลาง
ng g c auth-content




security course
ng g s security/security --flat core/core.module
ng g c security/login --flat
ng g g security/auth --flat -m app.module
  
dotnet add package System.IdentityModel.Tokens.Jwt
dotnet add package Microsoft.AspNetCore.Authentication.JwtBearer

netstat -a -n -o
taskkill -f /pid 18932

npm uninstall -g angular-cli
npm cache clean or npm cache verify (if npm > 5)
npm install -g @angular/cli@latest
Depending on your system, you may need to prefix the above commands with sudo.

Also, most likely you want to also update your local project version, because inside your project directory it will be selected with higher priority than the global one:

rm -rf node_modules
npm uninstall --save-dev angular-cli
npm install --save-dev @angular/cli@latest
npm install


ef core
dotnet tool install --global dotnet-ef

dotnet ef migrations add "Initial" -o "Data\Migrations
dotnet ef database update

Reversing A Migration
dotnet ef database update Create

dotnet ef migrations remove

dotnet ef database update 0
dotnet ef migrations remove