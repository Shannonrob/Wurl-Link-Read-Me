########################################################ADD COCOA PODS###########################

" There is two way to add cocoa pods"
(1) using terminal
(2) using cocoa pods app - Cocoapods.org -> Download app-> open Cocoa pods
xcode -> file -> new pod file from xcode project -> Desktop,folder,"current xcode project"-> add cocoa pods eg {Alamofire,Swifty Json, Socket.IO Framework}
(Alamofire : a library built on top of url session - for posting data to websites, work with web request,downloading data)
(Swifty Json : works with Json Data)
(Socket . IO Framework :to make app work in real time, opens a line of communication between app/client & web server api) 
add cocoa pods cont'd -> pod 'SwiftyJSON', pod 'Alamofire", Socket.IO-Client-Swift'->install      "always remember to add the appostrophies"
open project folder -> open workspace file
pods -> Alamofire -> build settings -> swift language version ->swift 3.2 (do the same for the other cocoa pods installed) -> command B (if error - click on the error and follow it to source code)

 



