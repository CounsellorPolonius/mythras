.class final Lcom/mrpoid/MrpoidMain$1;
.super Ljava/lang/Object;
.source "MrpoidMain.java"

# interfaces
.implements Lcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/MrpoidMain;->runMrp(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$mrpPath:Ljava/lang/String;

.field final synthetic val$screensize:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/mrpoid/MrpoidMain$1;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/mrpoid/MrpoidMain$1;->val$mrpPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/mrpoid/MrpoidMain$1;->val$screensize:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/mrpoid/MrpoidMain$1;->val$context:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u8fdb\u7a0b\u5931\u8d25 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/edroid/common/utils/UIUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILcom/mrpoid/apps/procmgr/AppProcess;Z)V
    .locals 2

    .line 115
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.mrpoid.actions.STARTMRP"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object p3, p0, Lcom/mrpoid/MrpoidMain$1;->val$context:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.mrpoid.apps.AppService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "entryMrp"

    .line 117
    iget-object p3, p0, Lcom/mrpoid/MrpoidMain$1;->val$mrpPath:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "entryActivity"

    .line 118
    iget-object p3, p0, Lcom/mrpoid/MrpoidMain$1;->val$context:Landroid/app/Activity;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object p1, p0, Lcom/mrpoid/MrpoidMain$1;->val$screensize:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "screensize"

    .line 120
    iget-object p3, p0, Lcom/mrpoid/MrpoidMain$1;->val$screensize:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/mrpoid/MrpoidMain$1;->val$context:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
