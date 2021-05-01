.class Lcom/mrpoid/app/EmulatorActivity$10;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/app/EmulatorActivity;->reqSendSms(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/app/EmulatorActivity;


# direct methods
.method constructor <init>(Lcom/mrpoid/app/EmulatorActivity;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$10;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 782
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$10;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {p1}, Lcom/mrpoid/app/EmulatorActivity;->access$100(Lcom/mrpoid/app/EmulatorActivity;)Lcom/mrpoid/core/Emulator;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0, v0}, Lcom/mrpoid/core/Emulator;->postMrpEvent(III)V

    return-void
.end method
