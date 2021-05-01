.class Lcom/mrpoid/mrplist/app/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/app/HomeActivity;->onNavigationItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/app/HomeActivity;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/app/HomeActivity;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/mrpoid/mrplist/app/HomeActivity$2;->this$0:Lcom/mrpoid/mrplist/app/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/mrpoid/mrplist/app/HomeActivity$2;->this$0:Lcom/mrpoid/mrplist/app/HomeActivity;

    invoke-static {v0, p2}, Lcom/mrpoid/mrplist/app/HomeActivity;->access$100(Lcom/mrpoid/mrplist/app/HomeActivity;I)V

    .line 302
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
