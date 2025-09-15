import { ArcList, ArcListItem, ComponentContent } from '@kit.ArkUI';
import { CustomButton } from '../view/CustumButton';

@Builder
function header() {
  Column() {
    Text('MILKY RECIPES')
      .fontSize(15)
      .fontWeight(FontWeight.Bold)
      .textAlign(TextAlign.Center)
      .margin({ top: 16, bottom: 12 })
      .fontColor('#C6A575')
  }
}

@Entry
@Component
export struct MilkRecipes {
  watchSize: string = '466px'
  context: UIContext = this.getUIContext()
  header: ComponentContent<object> = new ComponentContent(this.context, wrapBuilder(header))

  build() {
    Flex() {
      ArcList({ header: this.header }) {
        ArcListItem() {
          CustomButton({ title: 'Latte', router: 'pages/CurrentCoffeeRecipe' })
        }

        ArcListItem() {
          CustomButton({ title: 'Cappuccino', router: 'pages/CurrentCoffeeRecipe' })
        }

        ArcListItem() {
          CustomButton({ title: 'Flat White', router: 'pages/CurrentCoffeeRecipe' })
        }
      }
    }
    .width(this.watchSize)
    .height(this.watchSize)
    .backgroundColor('#5B3A1F')
  }
}
