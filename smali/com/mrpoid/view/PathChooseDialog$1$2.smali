.class Lcom/mrpoid/view/PathChooseDialog$1$2;
.super Ljava/lang/Object;
.source "PathChooseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/view/PathChooseDialog$1;->onPathOperate(IILandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mrpoid/view/PathChooseDialog$1;


# direct methods
.method constructor <init>(Lcom/mrpoid/view/PathChooseDialog$1;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$1$2;->this$1:Lcom/mrpoid/view/PathChooseDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 105
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
