.class Lcom/mrpoid/mrplist/app/HomeActivity$1;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/app/HomeActivity;->initLeftDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/app/HomeActivity;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/app/HomeActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity$1;->this$0:Lcom/mrpoid/mrplist/app/HomeActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .line 132
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 135
    iget-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity$1;->this$0:Lcom/mrpoid/mrplist/app/HomeActivity;

    invoke-static {p1}, Lcom/mrpoid/mrplist/app/HomeActivity;->access$000(Lcom/mrpoid/mrplist/app/HomeActivity;)Landroid/support/design/widget/NavigationView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f0900a8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity$1;->this$0:Lcom/mrpoid/mrplist/app/HomeActivity;

    iget-object v0, v0, Lcom/mrpoid/mrplist/app/HomeActivity;->scnsizeItems:[Ljava/lang/String;

    iget-object v1, p0, Lcom/mrpoid/mrplist/app/HomeActivity$1;->this$0:Lcom/mrpoid/mrplist/app/HomeActivity;

    iget v1, v1, Lcom/mrpoid/mrplist/app/HomeActivity;->scnsizeType:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method
