.class final Lcom/mrpoid/core/EmuLog$1;
.super Ljava/lang/Object;
.source "EmuLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/core/EmuLog;->showScreenLog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/mrpoid/core/EmuLog$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/mrpoid/core/EmuLog$1;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 78
    invoke-static {}, Lcom/mrpoid/core/EmuLog;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mrpoid/core/EmuLog$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mrpoid/core/EmuLog$1;->val$info:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/mrpoid/core/EmuLog;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {}, Lcom/mrpoid/core/EmuLog;->access$000()Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/core/EmuLog$1;->val$info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    invoke-static {}, Lcom/mrpoid/core/EmuLog;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
