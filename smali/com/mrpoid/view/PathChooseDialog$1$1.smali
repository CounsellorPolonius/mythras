.class Lcom/mrpoid/view/PathChooseDialog$1$1;
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

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$pathName:Landroid/widget/TextView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mrpoid/view/PathChooseDialog$1;Landroid/widget/EditText;ILandroid/widget/TextView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->this$1:Lcom/mrpoid/view/PathChooseDialog$1;

    iput-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->val$et:Landroid/widget/EditText;

    iput p3, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->val$position:I

    iput-object p4, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->val$pathName:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 84
    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->val$et:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->this$1:Lcom/mrpoid/view/PathChooseDialog$1;

    iget-object v1, v1, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {v1}, Lcom/mrpoid/view/PathChooseDialog;->access$400(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->this$1:Lcom/mrpoid/view/PathChooseDialog$1;

    iget-object v1, v1, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {v1}, Lcom/mrpoid/view/PathChooseDialog;->access$000(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/edroid/common/utils/FileUtils;->reNamePath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 91
    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->val$pathName:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->this$1:Lcom/mrpoid/view/PathChooseDialog$1;

    iget-object p2, p2, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p2}, Lcom/mrpoid/view/PathChooseDialog;->access$000(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/List;

    move-result-object p2

    iget v1, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->val$position:I

    invoke-interface {p2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->this$1:Lcom/mrpoid/view/PathChooseDialog$1;

    iget-object p2, p2, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p2}, Lcom/mrpoid/view/PathChooseDialog;->access$300(Lcom/mrpoid/view/PathChooseDialog;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "\u91cd\u547d\u540d\u6210\u529f"

    invoke-static {p2, v0}, Lcom/edroid/common/utils/UIUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_1
    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->this$1:Lcom/mrpoid/view/PathChooseDialog$1;

    iget-object p2, p2, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p2}, Lcom/mrpoid/view/PathChooseDialog;->access$300(Lcom/mrpoid/view/PathChooseDialog;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "\u91cd\u547d\u540d\u5931\u8d25"

    invoke-static {p2, v0}, Lcom/edroid/common/utils/UIUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$1$1;->this$1:Lcom/mrpoid/view/PathChooseDialog$1;

    iget-object p2, p2, Lcom/mrpoid/view/PathChooseDialog$1;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p2}, Lcom/mrpoid/view/PathChooseDialog;->access$300(Lcom/mrpoid/view/PathChooseDialog;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "\u8f93\u5165\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p2, v0}, Lcom/edroid/common/utils/UIUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
