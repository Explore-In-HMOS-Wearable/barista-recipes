@Component
export struct CurrentCoffeeRecipe {
  @State currentStep: number = 0
  watchSize: string = '466px'
  steps: string[] = [
    'Prepare the espresso',
    'Froth the milk',
    'Pour the milk over the espresso'
  ]
  @Consume('pathStack') pathStack: NavPathStack;


  build() {
    NavDestination(){
    Flex() {
      Column({ space: 20 }) {
        Text(this.steps[this.currentStep])
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
          .fontColor('#C6A575')
          .margin({ top: 24, bottom: 24 })

        Row({ space: 12 }) {
          Button(' Back ')
            .backgroundColor('#C6A575')
            .borderRadius(16)
            .fontColor('#5B3A1F')
            .padding({
              top: 10,
              bottom: 10,
              left: 16,
              right: 16
            })
            .onClick(() => {
              if (this.currentStep > 0) {
                this.currentStep--
              }
            })

          Button(this.currentStep < this.steps.length - 1 ? 'Next ' : 'Finished')
            .backgroundColor('#C6A575')
            .borderRadius(16)
            .fontColor('#5B3A1F')
            .padding
            ({
              top: 10,
              bottom: 10,
              left: 16,
              right: 16
            })
            .onClick(() => {
              if (this.currentStep < this.steps.length - 1) {
                this.currentStep++
              } else {
                this.pathStack.pushPathByName('ReadyCoffee', null)
              }
            })
        }
      }
      .width(this.watchSize)
      .height(this.watchSize)
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
    }
    .backgroundColor('#5B3A1F')
  }
    .hideTitleBar(true)
    .hideBackButton(true)
  }
}
