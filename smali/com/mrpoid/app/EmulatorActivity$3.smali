.class Lcom/mrpoid/app/EmulatorActivity$3;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/app/EmulatorActivity;->showScaleDialog()V
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

    .line 540
    iput-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$3;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 542
    iget-object p1, p0, Lcom/mrpoid/app/EmulatorActivity$3;->this$0:Lcom/mrpoid/app/EmulatorActivity;

    invoke-static {p1}, Lcom/mrpoid/app/EmulatorActivity;->access$100(Lcom/mrpoid/app/EmulatorActivity;)Lcom/mrpoid/core/Emulator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mrpoid/core/Emulator;->getScreen()Lcom/mrpoid/core/EmuScreen;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mrpoid/core/EmuScreen;->setScale(I)V

    return-void
.end method
