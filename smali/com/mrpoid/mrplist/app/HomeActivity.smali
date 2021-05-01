.class public Lcom/mrpoid/mrplist/app/HomeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# static fields
.field private static final BACKGROUND_IMGS:[I

.field private static final DEFAULT_BACKGROUND_INDEX:I


# instance fields
.field curFragemnt:Landroid/support/v4/app/Fragment;

.field explorerFragment:Landroid/support/v4/app/Fragment;

.field localFragemt:Landroid/support/v4/app/Fragment;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field mPlanetTitles:[Ljava/lang/String;

.field private navigationView:Landroid/support/design/widget/NavigationView;

.field scnsizeItems:[Ljava/lang/String;

.field scnsizeType:I

.field private sp:Landroid/content/SharedPreferences;

.field storeFragment:Landroid/support/v4/app/Fragment;

.field private themeColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 65
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mrpoid/mrplist/app/HomeActivity;->BACKGROUND_IMGS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x106000d
        0x7f0800c0
        0x7f0800c1
        0x7f0800c2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/mrplist/app/HomeActivity;)Landroid/support/design/widget/NavigationView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mrpoid/mrplist/app/HomeActivity;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/mrpoid/mrplist/app/HomeActivity;->setScnsize(I)V

    return-void
.end method

.method public static addToFavorate(Ljava/lang/String;)V
    .locals 1

    .line 400
    invoke-static {}, Lcom/mrpoid/mrplist/moduls/FavMgr;->getInstance()Lcom/mrpoid/mrplist/moduls/FavMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mrpoid/mrplist/moduls/FavMgr;->add(Ljava/lang/String;)V

    return-void
.end method

.method private applayScnsize()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->localFragemt:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->localFragemt:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/mrpoid/mrplist/view/LocalFragemt;

    iget-object v1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->scnsizeItems:[Ljava/lang/String;

    iget v2, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->scnsizeType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mrpoid/mrplist/view/LocalFragemt;->setScnsize(Ljava/lang/String;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->scnsizeItems:[Ljava/lang/String;

    iget v1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->scnsizeType:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/mrpoid/MrpoidMain;->setDefScnsize(Ljava/lang/String;)V

    return-void
.end method

.method private initBackground()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "theme_img"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/mrpoid/mrplist/app/HomeActivity;->setBackground(IZ)V

    :cond_0
    return-void
.end method

.method private initLeftDrawer()V
    .locals 7

    .line 119
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->mPlanetTitles:[Ljava/lang/String;

    const v0, 0x7f090048

    .line 121
    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/app/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x7f0900ad

    .line 122
    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/app/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    .line 123
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 125
    new-instance v0, Lcom/mrpoid/mrplist/app/HomeActivity$1;

    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v5, 0x7f0d004f

    const v6, 0x7f0d004e

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mrpoid/mrplist/app/HomeActivity$1;-><init>(Lcom/mrpoid/mrplist/app/HomeActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    iput-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 145
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 146
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 152
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0900a7

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/app/HomeActivity;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method

.method private reStartSelf()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->recreate()V

    :cond_0
    return-void
.end method

.method private setBackground(I)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1, v0}, Lcom/mrpoid/mrplist/app/HomeActivity;->setBackground(IZ)V

    return-void
.end method

.method private setBackground(IZ)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 184
    iget-object p2, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "theme_img"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    .line 189
    sget-object p2, Lcom/mrpoid/mrplist/app/HomeActivity;->BACKGROUND_IMGS:[I

    array-length p2, p2

    if-lt p1, p2, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 192
    :cond_2
    iget-object p2, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "theme_img"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-nez p1, :cond_3

    .line 194
    invoke-direct {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->reStartSelf()V

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget-object v0, Lcom/mrpoid/mrplist/app/HomeActivity;->BACKGROUND_IMGS:[I

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :goto_0
    return-void
.end method

.method private setScnsize(I)V
    .locals 2

    .line 256
    iget v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->scnsizeType:I

    if-ne p1, v0, :cond_0

    return-void

    .line 259
    :cond_0
    iput p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->scnsizeType:I

    .line 260
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "scnsizeType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    invoke-direct {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->applayScnsize()V

    return-void
.end method

.method public static showRunMrpModeDialogFragment(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 461
    invoke-static {p0, p1}, Lcom/mrpoid/mrplist/view/RunMrpDialog;->open(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showShare()V
    .locals 3

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f0d00b8

    .line 214
    invoke-virtual {p0, v2}, Lcom/mrpoid/mrplist/app/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    const v2, 0x7f0d00b9

    .line 215
    invoke-virtual {p0, v2}, Lcom/mrpoid/mrplist/app/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/app/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private swichPage(ILjava/lang/CharSequence;)V
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    .line 225
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->curFragemnt:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->curFragemnt:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 242
    :pswitch_0
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->explorerFragment:Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_1

    .line 243
    new-instance p1, Lcom/mrpoid/mrplist/view/ExplorerFragment;

    invoke-direct {p1}, Lcom/mrpoid/mrplist/view/ExplorerFragment;-><init>()V

    iput-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->explorerFragment:Landroid/support/v4/app/Fragment;

    .line 244
    :cond_1
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->explorerFragment:Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->curFragemnt:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->storeFragment:Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_2

    .line 237
    new-instance p1, Lcom/mrpoid/mrplist/view/StoreFragment;

    invoke-direct {p1}, Lcom/mrpoid/mrplist/view/StoreFragment;-><init>()V

    iput-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->storeFragment:Landroid/support/v4/app/Fragment;

    .line 238
    :cond_2
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->storeFragment:Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->curFragemnt:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 230
    :pswitch_2
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->localFragemt:Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_3

    .line 231
    new-instance p1, Lcom/mrpoid/mrplist/view/LocalFragemt;

    invoke-direct {p1}, Lcom/mrpoid/mrplist/view/LocalFragemt;-><init>()V

    iput-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->localFragemt:Landroid/support/v4/app/Fragment;

    .line 232
    :cond_3
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->localFragemt:Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->curFragemnt:Landroid/support/v4/app/Fragment;

    .line 249
    :goto_0
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->curFragemnt:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_4

    const p1, 0x7f090039

    .line 250
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->curFragemnt:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 252
    :cond_4
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->curFragemnt:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public isLightTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 455
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 457
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->sp:Landroid/content/SharedPreferences;

    .line 86
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->sp:Landroid/content/SharedPreferences;

    const-string v1, "theme_color"

    const v2, 0x7f0e0007

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->themeColor:I

    .line 88
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    .line 90
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/app/HomeActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->scnsizeItems:[Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->sp:Landroid/content/SharedPreferences;

    const-string v0, "scnsizeType"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->scnsizeType:I

    const p1, 0x7f0900a3

    .line 95
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/app/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/app/HomeActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 99
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 103
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->initLeftDrawer()V

    .line 115
    invoke-direct {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->applayScnsize()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 317
    :pswitch_0
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d0068

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 286
    :pswitch_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/mrpoid/mrplist/app/HomeActivity;->swichPage(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 311
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mrpoid/app/SettingsActivity2;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/app/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 297
    :pswitch_3
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d00ac

    .line 298
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->scnsizeItems:[Ljava/lang/String;

    iget v1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->scnsizeType:I

    new-instance v3, Lcom/mrpoid/mrplist/app/HomeActivity$2;

    invoke-direct {v3, p0}, Lcom/mrpoid/mrplist/app/HomeActivity$2;-><init>(Lcom/mrpoid/mrplist/app/HomeActivity;)V

    .line 299
    invoke-virtual {p1, v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 305
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 281
    :pswitch_4
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/mrpoid/mrplist/app/HomeActivity;->swichPage(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :pswitch_5
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->showGift()V

    goto :goto_0

    .line 291
    :pswitch_6
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 v0, 0x2

    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/mrpoid/mrplist/app/HomeActivity;->swichPage(ILjava/lang/CharSequence;)V

    .line 324
    :goto_0
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900a5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 432
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v2, 0x7f090098

    if-ne v0, v2, :cond_2

    .line 433
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f09009d

    if-ne v0, v2, :cond_1

    .line 434
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "theme_color"

    const v2, 0x7f0e000b

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1

    .line 437
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f09009e

    if-ne p1, v0, :cond_4

    .line 438
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "theme_color"

    const v2, 0x7f0e0007

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1

    .line 442
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v2, 0x7f090097

    if-ne v0, v2, :cond_3

    .line 443
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    add-int/lit16 p1, p1, -0x3e8

    invoke-direct {p0, p1}, Lcom/mrpoid/mrplist/app/HomeActivity;->setBackground(I)V

    return v1

    .line 445
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090080

    if-ne p1, v0, :cond_4

    .line 446
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mrpoid/mrplist/app/ExplorerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "path"

    sget-object v2, Lcom/mrpoid/mrplist/moduls/Common;->PATH_DOWN:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/app/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 383
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 385
    invoke-static {p0}, Lcom/edroid/common/utils/UmengUtils;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/PersistableBundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 167
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 169
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 390
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 392
    invoke-static {p0}, Lcom/edroid/common/utils/UmengUtils;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method showGift()V
    .locals 3

    .line 272
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b003b

    .line 274
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u60f3\u7684\u7f8e"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public showMrpInfoDialog(Ljava/lang/String;)V
    .locals 1

    .line 465
    invoke-virtual {p0}, Lcom/mrpoid/mrplist/app/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mrpoid/mrplist/view/MrpInfoDialogFragment;->open(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
