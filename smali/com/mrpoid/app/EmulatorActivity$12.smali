.class Lcom/mrpoid/app/EmulatorActivity$12;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$addr:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mrpoid/app/EmulatorActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$12;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    iput-object p2, p0, Lcom/mrpoid/app/EmulatorActivity$12;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/mrpoid/app/EmulatorActivity$12;->val$addr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 767
    invoke-static {}, Lcom/mrpoid/core/EmuSmsManager;->getDefault()Lcom/mrpoid/core/EmuSmsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/mrpoid/app/EmulatorActivity$12;->val$text:Ljava/lang/String;

    iget-object v0, p0, Lcom/mrpoid/app/EmulatorActivity$12;->val$addr:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/mrpoid/core/EmuSmsManager;->sendSms(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
