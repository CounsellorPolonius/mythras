.class Lcom/mrpoid/core/Emulator$3;
.super Ljava/lang/Thread;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/core/Emulator;->N2J_callVoidMethod([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/core/Emulator;


# direct methods
.method constructor <init>(Lcom/mrpoid/core/Emulator;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/mrpoid/core/Emulator$3;->this$0:Lcom/mrpoid/core/Emulator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 827
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 828
    iget-object v0, p0, Lcom/mrpoid/core/Emulator$3;->this$0:Lcom/mrpoid/core/Emulator;

    invoke-static {v0}, Lcom/mrpoid/core/Emulator;->access$000(Lcom/mrpoid/core/Emulator;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "mrp\u7ebf\u7a0b\u5f02\u5e38\u9000\u51fa\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 829
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
