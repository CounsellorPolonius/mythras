.class Lcom/mrpoid/mrplist/view/FavFragment$1;
.super Ljava/lang/Object;
.source "FavFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/FavFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/FavFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/FavFragment;I)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/FavFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FavFragment;

    iput p2, p0, Lcom/mrpoid/mrplist/view/FavFragment$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FavFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FavFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/FavFragment;->fmg:Lcom/mrpoid/mrplist/moduls/FavMgr;

    iget v1, p0, Lcom/mrpoid/mrplist/view/FavFragment$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/mrpoid/mrplist/moduls/FavMgr;->touch(I)V

    .line 54
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/FavFragment$1;->this$0:Lcom/mrpoid/mrplist/view/FavFragment;

    invoke-virtual {v0}, Lcom/mrpoid/mrplist/view/FavFragment;->refreshList()V

    return-void
.end method
