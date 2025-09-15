import { ArcList, ArcListItem, ComponentContent, router } from '@kit.ArkUI';
import { CustomButton } from '../view/CustumButton';

@Builder
function header() {
  Column() {
    Text('BARISTA RECIPES')
      .fontSize(20)
      .fontWeight(FontWeight.Bold)
      .textAlign(TextAlign.Center)
      .margin({ top: 16, bottom: 12 })
      .fontColor('#C6A575')
  }
}

@Entry
@Component
export struct Index {
  watchSize: string = '466px'
  context: UIContext = this.getUIContext()
  header: ComponentContent<object> = new ComponentContent(this.context, wrapBuilder(header))

  build() {
    Flex() {
      Row() {
        Column() {
          ArcList({ header: this.header }) {
            ArcListItem() {
              CustomButton({ title: 'Dairy-Free Recipes', router: 'pages/DairyFreeRecipes' })
            }

            ArcListItem() {
              CustomButton({ title: 'Milk Recipes', router: 'pages/MilkRecipes' })
            }
          }
        }
      }
    }
    .width(this.watchSize)
    .height(this.watchSize)
    .backgroundColor('#5B3A1F')
  }
}
