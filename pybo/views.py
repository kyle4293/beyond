from django.shortcuts import render, get_object_or_404, redirect
from django.utils import timezone
from .models import Post
from .forms import PostForm, CommentForm
from django.http import HttpResponseNotAllowed
from django.core.paginator import Paginator


def index(request):
    page = request.GET.get('page', '1')
    post_list = Post.objects.order_by('-create_date')
    paginator = Paginator(post_list, 10)
    page_obj = paginator.get_page(page)
    context = {'post_list': page_obj}
    return render(request, 'pybo/post_list.html', context)

def detail(request, post_id):
    post = get_object_or_404(Post, pk=post_id)
    context = {'post': post}
    return render(request, 'pybo/post_detail.html', context)    

def comment_create(request, post_id):
    post = get_object_or_404(Post, pk=post_id)
    if request.method == "POST":
        form = CommentForm(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.create_date = timezone.now()
            comment.post = post
            comment.save()
            return redirect('pybo:detail', post_id=post.id)
    else:
        return HttpResponseNotAllowed('Only POST is possible.')
    context = {'post': post, 'form': form}
    return render(request, 'pybo/post_detail.html',context)

def post_create(request):
    if request.method == 'POST':
        form = PostForm(request.POST)
        if form.is_valid():
            post = form.save(commit=False)
            post.create_date = timezone.now()
            post.save()
            return redirect('pybo:index')
    else:
        form = PostForm()
    context = {'form': form}
    return render(request, 'pybo/post_form.html',context)