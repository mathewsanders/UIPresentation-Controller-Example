# Using UIPresentation Controller

Here's a bare-bones example project with a presentation controller which is as simple as this:

````Swift
class HalfScreenPresentation: UIPresentationController {

    override func frameOfPresentedViewInContainerView() -> CGRect {

        let containerFrame = self.containerView!.frame

        return CGRect(x: 0, y: containerFrame.height/2, width: containerFrame.width, height: containerFrame.height/2)

    }
}
````

This works because your animation has the controller being presented/dismissed from the bottom of the screen (which is the default transition!) if you wanted to change this animation (e.g. slide from the top, or the side, or some other transition) you'd also need to provide an object that meets UIViewControllerAnimatedTransitioning requirements (which for the most part would be as simple as copy-and-paste of code in your perform method).

I'm really enjoying the UIPresentationController APIs, and hope you do too!

See also:
- Stackoverflow question: http://stackoverflow.com/questions/32534688/uisegue-positioning-uiview-halfway/32543697#32543697
- Apple docs: https://developer.apple.com/reference/uikit/uipresentationcontroller

## Requirements

- Xcode 8.0+
- Swift 3.0+

## Author

Made with :heart: in NYC by @permakittens

## Contributing

Contributions for bug fixing or improvements are welcome. Feel free to submit a pull request.
