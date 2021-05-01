.class Lcom/mrpoid/view/PathChooseDialog$4;
.super Ljava/lang/Object;
.source "PathChooseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/view/PathChooseDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/view/PathChooseDialog;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mrpoid/view/PathChooseDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$4;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    iput-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$4;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 232
    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$4;->val$et:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 233
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog$4;->this$0:Lcom/mrpoid/view/PathChooseDialog;

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

    move-result-object p2

    .line 237
    invoke-static {p2}, Lcom/edroid/common/utils/FileUtils;->createDir(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 240
    :pswitch_0
    iget-object v0, p0, Lcom/mrpoid/view/PathChooseDialog$4;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {v0}, Lcom/mrpoid/view/PathChooseDialog;->access$000(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$4;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    iget-object v0, p0, Lcom/mrpoid/view/PathChooseDialog$4;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {v0}, Lcom/mrpoid/view/PathChooseDialog;->access$000(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/view/PathChooseDialog$4;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {v1}, Lcom/mrpoid/view/PathChooseDialog;->access$000(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v0, v1}, Lcom/mrpoid/view/PathChooseDialog;->access$200(Lcom/mrpoid/view/PathChooseDialog;Ljava/util/List;I)V

    .line 242
    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$4;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p2}, Lcom/mrpoid/view/PathChooseDialog;->access$300(Lcom/mrpoid/view/PathChooseDialog;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "\u521b\u5efa\u6210\u529f"

    invoke-static {p2, v0}, Lcom/edroid/common/utils/UIUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 245
    :pswitch_1
    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$4;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p2}, Lcom/mrpoid/view/PathChooseDialog;->access$300(Lcom/mrpoid/view/PathChooseDialog;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "\u521b\u5efa\u5931\u8d25"

    invoke-static {p2, v0}, Lcom/edroid/common/utils/UIUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$4;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p2}, Lcom/mrpoid/view/PathChooseDialog;->access$300(Lcom/mrpoid/view/PathChooseDialog;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "\u8f93\u5165\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p2, v0}, Lcom/edroid/common/utils/UIUtils;->toastMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
