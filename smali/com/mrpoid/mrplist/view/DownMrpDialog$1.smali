.class Lcom/mrpoid/mrplist/view/DownMrpDialog$1;
.super Ljava/lang/Object;
.source "DownMrpDialog.java"

# interfaces
.implements Lcom/edroid/common/utils/WorkThread$ITask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/DownMrpDialog;->loadVer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/edroid/common/utils/WorkThread$ITask<",
        "Ljava/util/List<",
        "Lcom/mrpoid/mrplist/moduls/Store$MrpItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/DownMrpDialog;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$1;->this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDo([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/DownMrpDialog$1;->onDo([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs onDo([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/Store$MrpItem;",
            ">;"
        }
    .end annotation

    .line 196
    invoke-static {}, Lcom/mrpoid/mrplist/moduls/Store;->getInstance()Lcom/mrpoid/mrplist/moduls/Store;

    move-result-object p1

    iget-object v0, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$1;->this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->app:Lcom/mrpoid/mrplist/moduls/Store$AppItem;

    iget v0, v0, Lcom/mrpoid/mrplist/moduls/Store$AppItem;->_id:I

    invoke-virtual {p1, v0}, Lcom/mrpoid/mrplist/moduls/Store;->loadMrp(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 193
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/DownMrpDialog$1;->onResult(Ljava/util/List;)V

    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mrpoid/mrplist/moduls/Store$MrpItem;",
            ">;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$1;->this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 202
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$1;->this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/DownMrpDialog;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 203
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$1;->this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;

    iget-object p1, p1, Lcom/mrpoid/mrplist/view/DownMrpDialog;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
