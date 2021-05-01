.class Lcom/edroid/common/utils/WorkThread$IRunable;
.super Ljava/lang/Object;
.source "WorkThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/edroid/common/utils/WorkThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IRunable"
.end annotation


# instance fields
.field callbackRunnable:Ljava/lang/Runnable;

.field taskRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/edroid/common/utils/WorkThread;


# direct methods
.method public constructor <init>(Lcom/edroid/common/utils/WorkThread;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/edroid/common/utils/WorkThread$IRunable;->this$0:Lcom/edroid/common/utils/WorkThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/edroid/common/utils/WorkThread$IRunable;->taskRunnable:Ljava/lang/Runnable;

    .line 159
    iput-object p3, p0, Lcom/edroid/common/utils/WorkThread$IRunable;->callbackRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/edroid/common/utils/WorkThread$IRunable;->taskRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 165
    invoke-static {}, Lcom/edroid/common/utils/WorkThread;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/edroid/common/utils/WorkThread$IRunable;->callbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
