# UI Design and Widget

Topics:

- What is UI Design?
- Widgets
  - Introduction to Widgets
  - Build method
  - Stateless Widgets
  - Stateful Widgets
    - What is Stateful widgets?
    - What’s the major difference between Stateful & Stateless widget?
  - Basic Widgets
  - Assets, Images, and Icons
  - Layout widgets:
  - Interaction model widgets
    - Routing
    - Move from one Screen to another
  - Material Components widgets
    - App structure and navigation
    - Buttons
    - Input and Selections
    - Dialogs, Alerts, and Panels
    - Information displays
    - Layout
  - Painting and Effect widgets
  - Scrolling widgets
  - Styling widgets
  - Text widgets
  - Input widgets
  - Async widgets
- Themes
- Handling gestures
- Building complex UI

## Widgets

- What is a widget & types?

Basic:

- Scaffold
- Appbar
- Text (Size, Fonts, Colours)
- Container
- Column
- Row
- FlutterLogo
- Placeholder
- Button (ElevatedButton)

Assets, Images, and Icons:

- AssetBundle
- Image
  - Image(image: AssetImage("local-path"))
  - Image(image: NetworkImage("url"))
  - Image.asset("local-path")
  - Image.network("url")
- Icon
  - Material(default)
  - Font Awesome
- RawImage

Layout widgets:

- Align
- AspectRatio
- Baseline
- Center
- ConstrainedBox
- Container
- CustomSingleChildLayout
- Expanded
- FittedBox
- FractionallySizedBox
- IntrinsicHeight
- IntrinsicWidth
- LimitedBox
- Offstage
- OverflowBox
- Padding
- SizedBox
- SizedOverflowBox
- Transform

Interaction model widgets(Routing):

- Hero
- Navigator

Material Components widgets (App structure and navigation):

- AppBar
- BottomNavigationBar
- Drawer
- MaterialApp
- Scaffold
- SliverAppBar
- TabBar
- TabBarView
- TabController
- TabPageSelector
- WidgetsApp

Material Components widgets (Buttons):

- ElevatedButton
- DropdownButton
- FloatingActionButton
- IconButton
- OutlinedButton
- PopupMenuButton
- TextButton

Material Components widgets (Input and selections):

- TextField
- Checkbox
- Radio
- Switch
- Date & Time Pickers
- Slider

Material Components widgets (Dialogs, alerts, and panels):

- AlertDialog
- BottomSheet
- ExpansionPanel
- SimpleDialog
- SnackBar

Material Components widgets (Information displays):

- Card
- Chip
- CircularProgressIndicator
- DataTable
- GridView
- Image
- Icon
- LinearProgressIndicator
- Tooltip

Material Components widgets (Layout):

- Divider
- ListTile
- Stepper

Painting and effect widgets:

- BackdropFilter
- ClipOval
- ClipPath
- ClipRect
- CustomPaint
- DecoratedBox
- FractionalTranslation
- Opacity
- RotatedBox
- Transform

Scrolling widgets:

- CustomScrollView
- DraggableScrollableSheet
- GridView
- ListView
- NestedScrollView
- NotificationListener
- PageView
- RefreshIndicator
- ReorderableListView
- ScrollConfiguration
- Scrollable
- Scrollbar
- SingleChildScrollView

Styling widgets:

- MediaQuery
- Padding
- Theme

Text widgets:

- DefaultTextStyle
- RichText
- Text

Input widgets:

- Autocomplete
- Form
- FormField
- RawKeyboardListener

Async widgets:

- FutureBuilder
- StreamBuilder
