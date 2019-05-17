<%@ page import="np.com.pantbinod.StatusList" %>
<input type="hidden" name="id" value="${staff?.id}"/>
<div class="row form-row">
    <label>Staff Id</label>
    <input type="text" name="staffId" class="form-control" value="${staff?.staffId}"/>
</div>

<div class="row form-row">
    <label>First name</label>
    <input type="text" name="firstname" class="form-control" value="${staff?.firstname}"/>
</div>

<div class="row form-row">
    <label>Middle name</label>
    <input type="text" name="middlename" class="form-control" value="${staff?.middlename}"/>
</div>

<div class="row form-row">
    <label>Last name</label>
    <input type="text" name="lastname" class="form-control" value="${staff?.lastname}"/>
</div>



<div class="row form-row">
    <label>Department</label>
    <input type="text" name="department" class="form-control" value="${staff?.department?.id}"/>
</div>



<div class="row form-row">
    <label>Post</label>
    <input type="text" name="post" class="form-control" value="${staff?.post  }"/>
</div>



<div class="row form-row">
    <label>Experience</label>
    <input type="text" name="experience" class="form-control" value="${staff?.experience}"/>
</div>

<div class="row form-row">
    <label>Status</label>
    <g:select name="status" from="${StatusList.values()}" class="form-control"  value="${staff?.status}" noSelection="${['':'Select status']}"/>
</div>
