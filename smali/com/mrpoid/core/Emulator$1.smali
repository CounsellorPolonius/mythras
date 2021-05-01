.class Lcom/mrpoid/core/Emulator$1;
.super Ljava/lang/Object;
.source "Emulator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/core/Emulator;->N2J_showDlg(Ljava/lang/String;)V
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

    .line 689
    iput-object p1, p0, Lcom/mrpoid/core/Emulator$1;->this$0:Lcom/mrpoid/core/Emulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 692
    iget-object p1, p0, Lcom/mrpoid/core/Emulator$1;->this$0:Lcom/mrpoid/core/Emulator;

    invoke-virtual {p1}, Lcom/mrpoid/core/Emulator;->stop()V

    return-void
.end method
