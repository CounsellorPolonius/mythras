.class Lcom/mrpoid/view/PathChooseDialog$1;
.super Ljava/lang/Object;
.source "PathChooseDialog.java"

# interfaces
.implements Lcom/mrpoid/view/ListViewPathAdapter$OnPathOperateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/view/PathChooseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/view/PathChooseDialog;


# direct methods
.method constructor <init>(Lcom/mrpoid/view/PathChooseDialog;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPathOperate(IILandroid/widget/TextView;)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p1}, Lcom/mrpoid/view/PathChooseDialog;->access$000(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/edroid/common/utils/FileUtils;->deleteBlankPath(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p1}, Lcom/mrpoid/view/PathChooseDialog;->access$000(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p2}, Lcom/mrpoid/view/PathChooseDialog;->access$000(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p3}, Lcom/mrpoid/view/PathChooseDialog;->access$100(Lcom/mrpoid/view/PathChooseDialog;)I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/mrpoid/view/PathChooseDialog;->access$200(Lcom/mrpoid/view/PathChooseDialog;Ljava/util/List;I)V

    .line 66
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p1}, Lcom/mrpoid/view/PathChooseDialog;->access$300(Lcom/mrpoid/view/PathChooseDialog;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u5220\u9664\u6210\u529f"

    invoke-static {p1, p2}, Lcom/edroid/common/utils/UIUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 68
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p1}, Lcom/mrpoid/view/PathChooseDialog;->access$300(Lcom/mrpoid/view/PathChooseDialog;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u6ca1\u6709\u6743\u9650"

    invoke-static {p1, p2}, Lcom/edroid/common/utils/UIUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 70
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p1}, Lcom/mrpoid/view/PathChooseDialog;->access$300(Lcom/mrpoid/view/PathChooseDialog;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u4e0d\u80fd\u5220\u9664\u975e\u7a7a\u76ee\u5f55"

    invoke-static {p1, p2}, Lcom/edroid/common/utils/UIUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 74
    new-instance p1, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {v1}, Lcom/mrpoid/view/PathChooseDialog;->access$300(Lcom/mrpoid/view/PathChooseDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 75
    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {v1}, Lcom/mrpoid/view/PathChooseDialog;->access$000(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/edroid/common/utils/FileUtils;->getPathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {v2}, Lcom/mrpoid/view/PathChooseDialog;->access$300(Lcom/mrpoid/view/PathChooseDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u91cd\u547d\u540d"

    .line 77
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u786e\u5b9a"

    .line 80
    new-instance v2, Lcom/mrpoid/view/PathChooseDialog$1$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/mrpoid/view/PathChooseDialog$1$1;-><init>(Lcom/mrpoid/view/PathChooseDialog$1;Landroid/widget/EditText;ILandroid/widget/TextView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p1, "\u53d6\u6d88"

    .line 101
    new-instance p2, Lcom/mrpoid/view/PathChooseDialog$1$2;

    invoke-direct {p2, p0}, Lcom/mrpoid/view/PathChooseDialog$1$2;-><init>(Lcom/mrpoid/view/PathChooseDialog$1;)V

    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method
