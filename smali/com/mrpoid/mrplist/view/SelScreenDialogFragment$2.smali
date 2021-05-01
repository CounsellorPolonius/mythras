.class Lcom/mrpoid/mrplist/view/SelScreenDialogFragment$2;
.super Ljava/lang/Object;
.source "SelScreenDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment$2;->this$0:Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment$2;->this$0:Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;

    iput p2, p1, Lcom/mrpoid/mrplist/view/SelScreenDialogFragment;->type:I

    return-void
.end method
