.class Lcom/mrpoid/mrplist/view/StorePageFragment$1;
.super Ljava/lang/Object;
.source "StorePageFragment.java"

# interfaces
.implements Lcom/edroid/common/utils/WorkThread$ITask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/StorePageFragment;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/StorePageFragment;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/StorePageFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/StorePageFragment$1;->this$0:Lcom/mrpoid/mrplist/view/StorePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onDo([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/StorePageFragment$1;->this$0:Lcom/mrpoid/mrplist/view/StorePageFragment;

    invoke-virtual {p1}, Lcom/mrpoid/mrplist/view/StorePageFragment;->doLoad()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 93
    check-cast p1, Ljava/util/List;

    .line 94
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/StorePageFragment$1;->this$0:Lcom/mrpoid/mrplist/view/StorePageFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mrpoid/mrplist/view/StorePageFragment;->noMore:Z

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/mrplist/view/StorePageFragment$1;->this$0:Lcom/mrpoid/mrplist/view/StorePageFragment;

    iget-object v0, v0, Lcom/mrpoid/mrplist/view/StorePageFragment;->adapter:Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;

    invoke-virtual {v0, p1}, Lcom/mrpoid/mrplist/view/StorePageFragment$StoreAdapter;->appendData(Ljava/util/List;)V

    .line 98
    :goto_0
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/StorePageFragment$1;->this$0:Lcom/mrpoid/mrplist/view/StorePageFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mrpoid/mrplist/view/StorePageFragment;->setRefreshing(Z)V

    return-void
.end method
