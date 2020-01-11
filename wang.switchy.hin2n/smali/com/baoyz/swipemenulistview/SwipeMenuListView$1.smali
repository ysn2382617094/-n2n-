.class Lcom/baoyz/swipemenulistview/SwipeMenuListView$1;
.super Lcom/baoyz/swipemenulistview/SwipeMenuAdapter;
.source "SwipeMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baoyz/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baoyz/swipemenulistview/SwipeMenuListView;


# direct methods
.method constructor <init>(Lcom/baoyz/swipemenulistview/SwipeMenuListView;Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    invoke-direct {p0, p2, p3}, Lcom/baoyz/swipemenulistview/SwipeMenuAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public createMenu(Lcom/baoyz/swipemenulistview/SwipeMenu;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    invoke-static {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->access$000(Lcom/baoyz/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistview/SwipeMenuCreator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    invoke-static {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->access$000(Lcom/baoyz/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistview/SwipeMenuCreator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baoyz/swipemenulistview/SwipeMenuCreator;->create(Lcom/baoyz/swipemenulistview/SwipeMenu;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/baoyz/swipemenulistview/SwipeMenuView;Lcom/baoyz/swipemenulistview/SwipeMenu;I)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    invoke-static {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->access$100(Lcom/baoyz/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    invoke-static {v0}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->access$100(Lcom/baoyz/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuView;->getPosition()I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;->onMenuItemClick(ILcom/baoyz/swipemenulistview/SwipeMenu;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 81
    :goto_0
    iget-object p2, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    invoke-static {p2}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->access$200(Lcom/baoyz/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    move-result-object p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/baoyz/swipemenulistview/SwipeMenuListView$1;->this$0:Lcom/baoyz/swipemenulistview/SwipeMenuListView;

    invoke-static {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuListView;->access$200(Lcom/baoyz/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistview/SwipeMenuLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baoyz/swipemenulistview/SwipeMenuLayout;->smoothCloseMenu()V

    :cond_1
    return-void
.end method
