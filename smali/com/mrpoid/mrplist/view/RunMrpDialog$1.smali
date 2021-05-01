.class Lcom/mrpoid/mrplist/view/RunMrpDialog$1;
.super Ljava/lang/Object;
.source "RunMrpDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/RunMrpDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/RunMrpDialog;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/RunMrpDialog;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/RunMrpDialog$1;->this$0:Lcom/mrpoid/mrplist/view/RunMrpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/RunMrpDialog$1;->this$0:Lcom/mrpoid/mrplist/view/RunMrpDialog;

    invoke-static {p1, p2}, Lcom/mrpoid/mrplist/view/RunMrpDialog;->access$000(Lcom/mrpoid/mrplist/view/RunMrpDialog;I)V

    return-void
.end method
