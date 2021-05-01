.class Lcom/mrpoid/mrplist/view/DownMrpDialog$2;
.super Landroid/widget/ArrayAdapter;
.source "DownMrpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/mrplist/view/DownMrpDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/mrpoid/mrplist/moduls/Store$MrpItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;


# direct methods
.method constructor <init>(Lcom/mrpoid/mrplist/view/DownMrpDialog;Landroid/content/Context;IILjava/util/List;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/mrpoid/mrplist/view/DownMrpDialog$2;->this$0:Lcom/mrpoid/mrplist/view/DownMrpDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09011e

    .line 239
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 241
    invoke-virtual {p0, p1}, Lcom/mrpoid/mrplist/view/DownMrpDialog$2;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;

    .line 242
    iget-boolean p1, p1, Lcom/mrpoid/mrplist/moduls/Store$MrpItem;->isDown:Z

    if-eqz p1, :cond_0

    const-string p1, "\u542f\u52a8"

    goto :goto_0

    :cond_0
    const-string p1, "\u4e0b\u8f7d"

    :goto_0
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
