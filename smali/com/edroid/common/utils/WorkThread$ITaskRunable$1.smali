.class Lcom/edroid/common/utils/WorkThread$ITaskRunable$1;
.super Ljava/lang/Object;
.source "WorkThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/edroid/common/utils/WorkThread$ITaskRunable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/edroid/common/utils/WorkThread$ITaskRunable;


# direct methods
.method constructor <init>(Lcom/edroid/common/utils/WorkThread$ITaskRunable;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/edroid/common/utils/WorkThread$ITaskRunable$1;->this$1:Lcom/edroid/common/utils/WorkThread$ITaskRunable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread$ITaskRunable$1;->this$1:Lcom/edroid/common/utils/WorkThread$ITaskRunable;

    invoke-static {v0}, Lcom/edroid/common/utils/WorkThread$ITaskRunable;->access$400(Lcom/edroid/common/utils/WorkThread$ITaskRunable;)Lcom/edroid/common/utils/WorkThread$ITask;

    move-result-object v0

    iget-object v1, p0, Lcom/edroid/common/utils/WorkThread$ITaskRunable$1;->this$1:Lcom/edroid/common/utils/WorkThread$ITaskRunable;

    invoke-static {v1}, Lcom/edroid/common/utils/WorkThread$ITaskRunable;->access$300(Lcom/edroid/common/utils/WorkThread$ITaskRunable;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/edroid/common/utils/WorkThread$ITask;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
