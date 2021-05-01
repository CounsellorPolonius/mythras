.class Lcom/mrpoid/view/PathChooseDialog$2;
.super Ljava/lang/Object;
.source "PathChooseDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/view/PathChooseDialog;->init()V
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

    .line 166
    iput-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$2;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 169
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$2;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p1, p3}, Lcom/mrpoid/view/PathChooseDialog;->access$102(Lcom/mrpoid/view/PathChooseDialog;I)I

    .line 170
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$2;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p1}, Lcom/mrpoid/view/PathChooseDialog;->access$000(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 171
    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$2;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p2}, Lcom/mrpoid/view/PathChooseDialog;->access$500(Lcom/mrpoid/view/PathChooseDialog;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$2;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p1}, Lcom/edroid/common/utils/FileUtils;->listPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/mrpoid/view/PathChooseDialog;->access$002(Lcom/mrpoid/view/PathChooseDialog;Ljava/util/List;)Ljava/util/List;

    .line 173
    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$2;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p2}, Lcom/mrpoid/view/PathChooseDialog;->access$400(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/Stack;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object p1, p0, Lcom/mrpoid/view/PathChooseDialog$2;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    iget-object p2, p0, Lcom/mrpoid/view/PathChooseDialog$2;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p2}, Lcom/mrpoid/view/PathChooseDialog;->access$000(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/mrpoid/view/PathChooseDialog$2;->this$0:Lcom/mrpoid/view/PathChooseDialog;

    invoke-static {p3}, Lcom/mrpoid/view/PathChooseDialog;->access$400(Lcom/mrpoid/view/PathChooseDialog;)Ljava/util/Stack;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Stack;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-static {p1, p2, p3}, Lcom/mrpoid/view/PathChooseDialog;->access$200(Lcom/mrpoid/view/PathChooseDialog;Ljava/util/List;I)V

    return-void
.end method
