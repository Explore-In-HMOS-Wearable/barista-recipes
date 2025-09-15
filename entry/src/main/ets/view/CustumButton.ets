import { router } from '@kit.ArkUI';

@Component
export struct CustomButton {
  @Prop title: string;
  @Prop router: string;

  build() {

    Button(this.title)
      .backgroundColor('#C6A575')
      .borderRadius(16)
      .fontColor('#5B3A1F')
      .margin({
        top: 6,
        bottom: 6,
        left: 12,
        right: 12
      })
      .padding({
        top: 10,
        bottom: 10,
        left: 16,
        right: 16
      })
      .onClick(() => {
        router.pushUrl({ url: this.router })
      })

  }
}