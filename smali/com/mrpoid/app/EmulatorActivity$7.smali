.class Lcom/mrpoid/app/EmulatorActivity$7;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/app/EmulatorActivity;->showMrpInputer_i(Ljava/lang/String;Ljava/lang/String;II)V
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

    .line 598
    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$7;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 601
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$7;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {p1}, Lcom/mrpoid/app/EmulatorActivity;->access$100(Lcom/mrpoid/app/EmulatorActivity;)Lcom/mrpoid/core/Emulator;

    move-result-object p1

    iget-object p2, p0, Lcom/mrpoid/app/EmulatorActivity$7;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {p2}, Lcom/mrpoid/app/EmulatorActivity;->access$300(Lcom/mrpoid/app/EmulatorActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mrpoid/core/Emulator;->setEditInputContent(Ljava/lang/String;)V

    .line 602
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$7;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {p1}, Lcom/mrpoid/app/EmulatorActivity;->access$100(Lcom/mrpoid/app/EmulatorActivity;)Lcom/mrpoid/core/Emulator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2, p2}, Lcom/mrpoid/core/Emulator;->postMrpEvent(III)V

    return-void
.end method
