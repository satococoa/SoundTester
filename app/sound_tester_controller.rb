class SoundTesterController < UITableViewController
  CELLID = 'soundCell'
  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    row = indexPath.row
    cell = tableView.dequeueReusableCellWithIdentifier(CELLID) ||
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault,
                                          reuseIdentifier: CELLID)
    cell.textLabel.text = SOUNDS[row][:name]
    cell
  end

  def tableView(tableView, numberOfRowsInSection: section)
    SOUNDS.count
  end

  def tableView(tableView, didSelectRowAtIndexPath: indexPath)
    row = indexPath.row
    play(SOUNDS[row][:id])
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
  end

  def play(id)
    NSLog "%@", id
    AudioServicesPlaySystemSound(id)
  end
end
